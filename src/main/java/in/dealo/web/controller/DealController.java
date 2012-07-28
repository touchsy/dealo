package in.dealo.web.controller;

import in.dealo.entity.Deal;
import in.dealo.entity.DealDetail;
import in.dealo.entity.Usr;
import in.dealo.entity.Vendor;
import in.dealo.svc.CitySvc;
import in.dealo.svc.DealCategorySvc;
import in.dealo.svc.DealContentSvc;
import in.dealo.svc.DealDetailSvc;
import in.dealo.svc.DealOrderSvc;
import in.dealo.svc.DealStatusSvc;
import in.dealo.svc.UsrSvc;
import in.dealo.svc.VendorSvc;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

@RequestMapping("/su/deals")
@Controller
@RooWebScaffold(path = "su/deals", formBackingObject = Deal.class)
public class DealController {
	
	@Autowired
	private UsrSvc userSvc;
	
	@Autowired
	private DealCategorySvc dealCategorySvc;
	
	@Autowired
	private VendorSvc vendorSvc;
	
	@Autowired
	private DealStatusSvc dealStatusSvc;
	
	
	@Autowired
	private CitySvc citySvc;
	
	
	@Autowired
	private DealOrderSvc dealOrderSvc;
	
	@Autowired
	private DealContentSvc dealContentSvc;
	
	@Autowired
	private DealDetailSvc dealDetailSvc;
	
	 
	
	
	 @RequestMapping(method = RequestMethod.POST, produces = "text/html")
	    public String create(@Valid Deal deal, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
	        if (bindingResult.hasErrors()) {
	            populateEditForm(uiModel, deal);
	            uiModel.addAttribute("cities", citySvc.findAllCitys());
	            return "su/deals/createDeal";
	        }
	        uiModel.asMap().clear();
	       
			dealSvc.saveDeal(deal);
	        return "redirect:/su/deals/" + encodeUrlPathSegment(deal.getId().toString(), httpServletRequest);
	    }
	    
	    @RequestMapping(params = "form", produces = "text/html")
	    public String createForm(Model uiModel) {
	        populateEditForm(uiModel, new Deal());
	        uiModel.addAttribute("cities", citySvc.findAllCitys());
	        return "su/deals/createDeal";
	    }
	    
	    @RequestMapping(value = "/{id}", produces = "text/html")
	    public String show(@PathVariable("id") Integer id, Model uiModel) {
	        addDateTimeFormatPatterns(uiModel);
	        uiModel.addAttribute("deal", dealSvc.findDeal(id));
	        uiModel.addAttribute("itemId", id);
	        return "su/deals/show";
	    }
	    
	    @RequestMapping(produces = "text/html")
	    public String list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
	        if (page != null || size != null) {
	            int sizeNo = size == null ? 10 : size.intValue();
	            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
	            uiModel.addAttribute("deals", dealSvc.findDealEntries(firstResult, sizeNo));
	            float nrOfPages = (float) dealSvc.countAllDeals() / sizeNo;
	            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
	        } else {
	            uiModel.addAttribute("deals", dealSvc.findAllDeals());
	        }
	        addDateTimeFormatPatterns(uiModel);
	        return "su/deals/list";
	    }
	    
	    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
	    public String update(@Valid Deal deal, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
	        if (bindingResult.hasErrors()) {
	            populateEditForm(uiModel, deal);
	            return "su/deals/update";
	        }
	        uiModel.asMap().clear();
	        dealSvc.updateDeal(deal);
	        return "redirect:/su/deals/" + encodeUrlPathSegment(deal.getId().toString(), httpServletRequest);
	    }
	    
	    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
	    public String updateForm(@PathVariable("id") Integer id, Model uiModel) {
	        populateEditForm(uiModel, dealSvc.findDeal(id));
	        return "su/deals/createDeal";
	    }
	    
	    void addDateTimeFormatPatterns(Model uiModel) {
	        uiModel.addAttribute("deal_starttime_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
	        uiModel.addAttribute("deal_endtime_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
	        uiModel.addAttribute("deal_validupto_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
	        uiModel.addAttribute("deal_created_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
	        uiModel.addAttribute("deal_modified_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
	    }
	    
	    void populateEditForm(Model uiModel, Deal deal) {
	        uiModel.addAttribute("deal", deal);
	        addDateTimeFormatPatterns(uiModel);
	        uiModel.addAttribute("citys", citySvc.findAllCitys());
	        uiModel.addAttribute("dealcategorys", dealCategorySvc.findAllDealCategorys());
	        uiModel.addAttribute("dealcontents", dealContentSvc.findAllDealContents());
	        uiModel.addAttribute("dealdetails", dealDetailSvc.findAllDealDetails());
	        uiModel.addAttribute("dealorders", dealOrderSvc.findAllDealOrders());
	        uiModel.addAttribute("dealstatuses", dealStatusSvc.findAllDealStatuses());
	        uiModel.addAttribute("vendors", vendorSvc.findAllVendors());
	    }
	    
	    String encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
	        String enc = httpServletRequest.getCharacterEncoding();
	        if (enc == null) {
	            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
	        }
	        try {
	            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
	        } catch (UnsupportedEncodingException uee) {}
	        return pathSegment;
	    }
	    
	   /* my Methods... */
	    
	
	@RequestMapping(value="createDeal",method=RequestMethod.GET, produces = "text/html")
    public String createDealForm(Model uiModel) {
		uiModel.addAttribute("deal", new Deal());
		uiModel.addAttribute("vendor", new Vendor());
		uiModel.addAttribute("user", new Usr());
		uiModel.addAttribute("dealCategories",dealCategorySvc.findAllDealCategorys());
		uiModel.addAttribute("dealStatus", dealStatusSvc.findAllDealStatuses());
		uiModel.addAttribute("vendors", vendorSvc.findAllVendors());
		uiModel.addAttribute("cities", citySvc.findAllCitys());
		uiModel.addAttribute("dealDetail", new DealDetail());
        return "su/deals/createDeal";
    }
	@RequestMapping(value="createDeal", method=RequestMethod.POST, produces = "text/html")
    public String createDealPostForm(Model uiModel, @Valid Deal deal,
			BindingResult result, HttpServletRequest req,
			@RequestParam(value = "image1", required = false) MultipartFile image1,
			@RequestParam(value = "image2", required = false) MultipartFile image2,
    		@RequestParam(value = "image3", required = false) MultipartFile image3,
    		@RequestParam(value = "image4", required = false) MultipartFile image4,
    		@RequestParam(value = "thumbnail", required = false) MultipartFile thumbnail) {
		deal.setModified(new Date());
		DealDetail dealDetail=deal.getDealDetail();
		dealDetail.setModified(new Date());
		dealDetail.setCreated(new Date());
	    dealDetail.setImage1(saveImage(image1, req));
	    dealDetail.setImage2(saveImage(image2, req));
	    dealDetail.setImage3(saveImage(image3, req));
	    dealDetail.setImage4(saveImage(image4, req));
	    dealDetail.setThumbnail(saveImage(thumbnail, req));
	    deal.setDealDetail(dealDetail);
	    deal.setCreated(new Date());
	    deal.setDealStatus(dealStatusSvc.findDealStatus(10));
	    deal.setDealCategory(dealCategorySvc.findDealCategory(1));
	    dealDetailSvc.saveDealDetail(deal.getDealDetail());
	    dealSvc.saveDeal(deal);
		return "redirect:/su/deals/createDeal";
    }
	public String saveImage(MultipartFile name, HttpServletRequest req) {
		String fileSaveWithName=null;
		try {
			String url = req.getSession().getServletContext().getRealPath("r/images");
			String fileName = UUID.randomUUID().toString().substring(0, 6);
			fileSaveWithName=url + "/" + "" +fileName+ ".jpg";
			File newFile = new File(fileSaveWithName);
			System.out.println(newFile);
			OutputStream out = new FileOutputStream(newFile);
			byte[] buf = name.getBytes();
			System.out.println(buf.length);
			System.out.println(name.getOriginalFilename());
			out.write(buf);
			req.getInputStream().close();
			out.close();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
		return fileSaveWithName;
	}
	
	@RequestMapping(value="createVendor",method=RequestMethod.GET, produces = "text/html")
    public String createVendorForm(Model uiModel) {
		uiModel.addAttribute("vendor", new Vendor());
		return "home/createVendor";
    }
	
	@RequestMapping(value="createVendor",method=RequestMethod.POST, produces = "text/html")
    public String createVendorPostForm(Model uiModel, @Valid Vendor vendor,
			BindingResult result) {
		vendor.setModified(new Date());
		if(result.hasErrors())
		{
			System.out.println(result.getFieldError());
			System.out.println(result.getFieldErrors());
		}
		Usr user= vendor.getUsr();
		Md5PasswordEncoder encodePassword= new Md5PasswordEncoder();
		String md5pass=encodePassword.encodePassword(user.getPassword(), null);
		user.setPassword(md5pass);
		user.setCreated(new Date());
		user.setModified(new Date());
		user.setDisplayName(vendor.getName());
		vendor.setUsr(user);
		vendor.setModified(new Date());
		userSvc.saveUsr(vendor.getUsr());
		System.out.println(vendor);
		vendorSvc.saveVendor(vendor);
		return "redirect:/su/deals/createDeal";
    }
	
}
