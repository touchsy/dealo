package in.dealo.web.controller;

import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolationException;

import in.dealo.entity.City;
import in.dealo.entity.Deal;
import in.dealo.entity.DealOrder;
import in.dealo.entity.Subscriber;
import in.dealo.entity.Webcontactform;
import in.dealo.svc.CitySvc;
import in.dealo.svc.DealOrderSvc;
import in.dealo.svc.DealSvc;
import in.dealo.svc.EmailSenderSvc;
import in.dealo.svc.PaymentModeSvc;
import in.dealo.svc.SubscriberSvc;
import in.dealo.svc.WebcontactformSvc;
import in.dealo.web.util.StringUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/")
@Controller
public class HomeController {
	
	@Autowired
	private CitySvc citySvc;
	
	@Autowired
	private DealSvc dealSvc;
	
	@Autowired
	private SubscriberSvc subscriberSvc;
	
	@Autowired
	private WebcontactformSvc webcontactformSvc;
	
	@Autowired
	private PaymentModeSvc paymentModeSvc;
	
	@Autowired
	private DealOrderSvc dealOrderSvc;

	@Autowired
	private EmailSenderSvc emailSenderSvc;
	
	@ModelAttribute
	public void commonModel(ModelMap model) {
		model.addAttribute("cities", citySvc.findActiveCities());
	}
	
	@RequestMapping("")
	public String home(@CookieValue(value="c", required=false, defaultValue="delhi") String city) {
		return "forward:/real-estate-deals-" + city;
	}
	
	@RequestMapping("real-estate-deals-{cityURL}")
	public String cityDeals(ModelMap model, @PathVariable("cityURL") String cityURL,@CookieValue(value="c", required=false) String cityCookie, HttpServletResponse response) {
		model.addAttribute("cityURL", cityURL);
		
		if(cityCookie == null || cityCookie.equals("") || !cityCookie.equals(cityURL)) {
			Cookie c = new Cookie("c", cityURL);
			c.setPath("/");
			c.setMaxAge(12*30*24*60*60);
			response.addCookie(c);
		}
		
		City c = citySvc.findCityByUrl(cityURL);
		if(c == null) {
			return "redirect:/";
		}
		Deal deal = null;
		try {
			deal =	dealSvc.getActiveDeal(c.getId());
			model.addAttribute("pageTitle", c.getPageTitle());
			model.addAttribute("deal", deal);
		} catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "No deals available!");
			return "wwwpage";
		}		
		
		return "home/index";
	}
	
	
	@RequestMapping("changecity-{cityURL}")
	public String changeCity(@PathVariable("cityURL") String cityURL, HttpServletResponse response) {
		City c = citySvc.findCityByUrl(cityURL);
		if(c != null) {
			Cookie cookie = new Cookie("c", cityURL);
			cookie.setPath("/");
			cookie.setMaxAge(12*30*24*60*60);
			response.addCookie(cookie);
		}
		return "redirect:/";
	}
	
	
	
	@RequestMapping("subscribe")
	public String subscribe(ModelMap model, @RequestParam("val") String val, @CookieValue(value="c", required=false, defaultValue="delhi") String city) {
		if(StringUtil.isEmpty(val) || ( !StringUtil.isEmailValid(val) && !StringUtil.isMobileValid(val))) {
			model.addAttribute("message", "Invalid email or mobile number");
			return "forward:/real-estate-deals-" + city;
		}
		try {
			City c = citySvc.findCityByUrl(city);
			Subscriber s = new Subscriber();
			s.setCity(c);
			s.setCreated(new Date());
			s.setModified(new Date());
			s.setEmailmobile(val);
			s.setSubscribed(true);
			subscriberSvc.saveSubscriber(s);
		} catch(ConstraintViolationException e) {
			e.printStackTrace();
			System.out.println("Already Subscribed : " + val);
		}
		model.addAttribute("message", "Subscribed Successfully");
		return "forward:/real-estate-deals-" + city;
	}
	
	@RequestMapping(value="contact",method=RequestMethod.GET)
	public String contact(){
		return "home/contact";
	}
	
	@RequestMapping(value="contact",method=RequestMethod.POST)
	public String contactSubmit(@RequestParam("email") String email, @RequestParam("name") String name, @RequestParam("msg") String msg, ModelMap model){
		Webcontactform c = new Webcontactform();
		c.setCreated(new Date());
		c.setEmail(email);
		c.setMessage(msg);
		c.setName(name);
		c.setModified(new Date());
		
		webcontactformSvc.saveWebcontactform(c);
		model.addAttribute("message", "Thanks for contacting us");
		return "home/contact";
	}
	
	@RequestMapping("howitworks")
	public String howItWorks(){
		return "home/howitworks";
	}
	
	@RequestMapping(value="checkout/{dealUrl}", method=RequestMethod.GET)
	public String checkout(@PathVariable("dealUrl") String dealUrl, ModelMap model, DealOrder dealOrder){
		Deal deal = dealSvc.getDealByUrl(dealUrl);
		dealOrder.setDeal(deal);
		dealOrder.setQuantity(1);
		dealOrder.setTotalAmount(deal.getSellingPrice());
		dealOrder.setPaidAmount(deal.getSellingPrice());
		
		dealOrderSvc.validateDealForOrder(dealOrder);
		
		model.addAttribute("pageTitle", "Checkout " + deal.getTitle());
		model.addAttribute("paymentModes", paymentModeSvc.getActivePaymentModes());
		model.addAttribute("deal", deal);
		model.addAttribute("dealOrder", dealOrder);
		return "home/checkout";
	}
	
	@RequestMapping(value="checkout/{dealUrl}", method=RequestMethod.POST)
	public String checkoutSubmit(@PathVariable("dealUrl") String dealUrl, ModelMap model, DealOrder dealOrder, BindingResult result){
		Deal deal = dealSvc.getDealByUrl(dealUrl);
		dealOrder.setDeal(deal);
		
		// ------ FOR NOW ---------------    
		dealOrder.setQuantity(1);
		//-------------------------------
		
		dealOrder.setSellingPrice(deal.getSellingPrice());
		dealOrder.setTotalAmount(dealOrder.getSellingPrice() * dealOrder.getQuantity());
		dealOrder.setPromoValue(0);
		
		
		if(dealOrder.getTotalAmount() - dealOrder.getPromoValue() != dealOrder.getPaidAmount()) {
			result.rejectValue("paidAmount", "", "Invalid Amount");
		}
		
		if(!StringUtil.isEmailValid(dealOrder.getEmail())) {
			result.rejectValue("email", "", "Invalid Email");
		}
		if(!StringUtil.isMobileValid(dealOrder.getMobile())) {
			result.rejectValue("mobile", "", "Invalid mobile");
		}
		if(StringUtil.isEmpty(dealOrder.getCity())){
			result.rejectValue("city","", "Invalid City");
		}
		if(StringUtil.isEmpty(dealOrder.getAddress1())){
			result.rejectValue("address1","", "Invalid Address");
		}
		if(!StringUtil.isPinCodeValid(dealOrder.getPostalCode())){
			result.rejectValue("postalCode","", "Invalid Pincode");
		}
		
		dealOrder.setPaymentGateway(null);
		dealOrder.setPaymentTxnId(null);
		dealOrder.setPgIncomingParams(null);
		dealOrder.setPgOutgoingParams(null);
		dealOrder.setUsr(null);
		dealOrder.setStatus(DealOrder.ORDER_STATUS_NEW);
		
		if(result.hasErrors()) {
			model.addAttribute("paymentModes", paymentModeSvc.getActivePaymentModes());
			model.addAttribute("deal", deal);
			model.addAttribute("dealOrder", dealOrder);
			return "home/checkout";
		}
		
		dealOrderSvc.checkout(dealOrder);
		
		Md5PasswordEncoder md5 = new Md5PasswordEncoder();
		String redirectUrl = "/checkoutresponse/" + dealUrl + "/" + dealOrder.getCode() + "/" + md5.encodePassword(dealOrder.getCode() + dealOrder.getId(), dealOrder.getMobile());
		/*
		 * should come from paymegt gateway service
		 */
		
		
		return "redirect:" + redirectUrl;
	}
	
	@RequestMapping(value="checkoutresponse/{dealUrl}/{orderCode}/{md5}", method=RequestMethod.GET)
	public String checkoutResponse(@PathVariable("dealUrl") String dealUrl, @PathVariable("orderCode") String orderCode, @PathVariable("md5") String md5, ModelMap model){
		
		DealOrder dealOrder = dealOrderSvc.findByCode(orderCode);
		Deal deal = dealSvc.getDealByUrl(dealUrl);
		if(deal.getId() != dealOrder.getDeal().getId()) {
			throw new RuntimeException("Invalid URL");
		}
		
		Md5PasswordEncoder md5Encoder = new Md5PasswordEncoder();
		String md5encoded = md5Encoder.encodePassword(dealOrder.getCode() + dealOrder.getId(), dealOrder.getMobile());
		if(!md5.equals(md5encoded)) {
			throw new RuntimeException("Invalid URL");
		}
		
		
		dealOrderSvc.checkoutSuccess(dealOrder);
		emailSenderSvc.sendMessage("dealo.in Orders <orders@dealo.in>", "Your dealo.in order - " + dealOrder.getCode() , dealOrder.getEmail(), "Thanks for your order at dealo.in for purchasing deal:\"" + deal.getTitle() + "\"\n\nPlease note if your order was Cash\\Cheque on delivery, the order would not be confirmed until the payment is received.");
		
		model.addAttribute("deal", deal);
		model.addAttribute("dealOrder", dealOrder);
		return "redirect:/checkoutthanks/" + dealUrl + "/" + dealOrder.getCode() + "/" + md5;
	}
	
	@RequestMapping(value="checkoutthanks/{dealUrl}/{orderCode}/{md5}", method=RequestMethod.GET)
	public String checkoutThanks(@PathVariable("dealUrl") String dealUrl, @PathVariable("orderCode") String orderCode, @PathVariable("md5") String md5, ModelMap model){
		
		DealOrder dealOrder = dealOrderSvc.findByCode(orderCode);
		Deal deal = dealSvc.getDealByUrl(dealUrl);
		if(deal.getId() != dealOrder.getDeal().getId()) {
			throw new RuntimeException("Invalid URL");
		}
		
		Md5PasswordEncoder md5Encoder = new Md5PasswordEncoder();
		String md5encoded = md5Encoder.encodePassword(dealOrder.getCode() + dealOrder.getId(), dealOrder.getMobile());
		if(!md5.equals(md5encoded)) {
			throw new RuntimeException("Invalid URL");
		}
		
		model.addAttribute("deal", deal);
		model.addAttribute("dealOrder", dealOrder);
		return "home/thanks";
	}
	
	
	@RequestMapping(value="getdealsoldcount/{dealUrl}", method=RequestMethod.GET)
	@ResponseBody
	public String getdealSoldCount(@PathVariable("dealUrl") String dealUrl, @CookieValue(value="c", required=false) String cityUrl, HttpServletResponse response) {
		City c = citySvc.findCityByUrl(cityUrl);
		Deal activeDeal = dealSvc.getActiveDeal(c.getId());		
		Deal deal = dealSvc.getDealByUrl(dealUrl);
		
		if(activeDeal.getId() != deal.getId()) {
			throw new RuntimeException("Invalid reuqest");
		}
		
		int soldCount = dealSvc.getDealSoldCount(deal.getId()); 
		String text = "Deal is LIVE";
		if(soldCount < deal.getMinCouponsRequired()){
			text = deal.getCouponsSold() + " already booked. " + (deal.getMinCouponsRequired() - deal.getCouponsSold()) + " more required";
		}
		response.setContentType("text/plain");
		return text;
	}
}
