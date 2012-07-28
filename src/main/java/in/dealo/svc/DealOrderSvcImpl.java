package in.dealo.svc;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;

import in.dealo.entity.Deal;
import in.dealo.entity.DealOrder;
import in.dealo.web.util.StringUtil;


public class DealOrderSvcImpl implements DealOrderSvc {
	@Autowired
	private DealSvc dealSvc;
	
	@Override
	public void checkout(DealOrder dealOrder){
		validateOrder(dealOrder);
		
		dealOrder.setStatus(DealOrder.ORDER_STATUS_SUBMITTED);
		dealOrder.setCode("");
		dealOrder.setCreated(new Date());
		dealOrder.setModified(dealOrder.getCreated());
		
		this.saveDealOrder(dealOrder);
		dealOrder.setCode(StringUtil.ensureLength(dealOrder.getDeal().getId()*86, 4) + "" + StringUtil.ensureLength(dealOrder.getId()*12, 6));
		this.saveDealOrder(dealOrder);
	}
	
	@Override
	public void validateDealForOrder(DealOrder dealOrder) {
		Deal deal = dealSvc.findDeal(dealOrder.getDeal().getId()); //non-cached
		dealOrder.setDeal(deal);
		
		if( !deal.isEnabled() || !deal.getDealStatus().getName().equals("Live") ||
				deal.getEndTime().before(new Date()) || deal.getStartTime().after(new Date()) ) {
			throw new RuntimeException("Invalid deal");
		}
		
		System.out.println("TotalCoupons: " + deal.getTotalCoupons() + "  CouponSold: " + deal.getCouponsSold());
		if ( (deal.getTotalCoupons() > 0 && deal.getCouponsSold()+0 >= deal.getTotalCoupons())) {
			throw new RuntimeException("Deal Sold out!");
		}
	}
	
	
	@Override
	public void validateOrder(DealOrder dealOrder) {
		validateDealForOrder(dealOrder);
		
		System.out.println("OPrice: " + dealOrder.getSellingPrice() + "  DPrice: " + dealOrder.getDeal().getSellingPrice());
		if(dealOrder.getSellingPrice() != dealOrder.getDeal().getSellingPrice() + 0) {
			throw new RuntimeException("Invalid price");
		}
		dealOrder.setTotalAmount(dealOrder.getSellingPrice() * dealOrder.getQuantity());
		if(dealOrder.getTotalAmount() - dealOrder.getPromoValue() != dealOrder.getPaidAmount()) {
			throw new RuntimeException("Invalid amount");
		}
	}
	
	
	@Override
	public DealOrder findByCode(String code){
		return dealOrderDAO.findByCode(code);
	}
	
	@Override
	public void checkoutSuccess(DealOrder dealOrder){
		//dealOrder.setStatus(DealOrder.ORDER_STATUS_);
		int dealId = dealOrder.getDeal().getId();
		
		if(dealOrder.getStatus() == DealOrder.ORDER_STATUS_SUBMITTED) {
			Deal deal = dealSvc.findDeal(dealId);
			deal.setCouponsSold(deal.getCouponsSold() + dealOrder.getQuantity());
			dealSvc.updateDeal(deal);
			
			//cache clear if crossing min limit
			if(deal.getCouponsSold() >= deal.getMinCouponsRequired() -0 && deal.getCouponsSold() - dealOrder.getQuantity() < deal.getMinCouponsRequired()) {
				dealSvc.evictCacheActiveDeal(deal.getCity().getId());
				dealSvc.evictCacheDealByUrl(deal.getPageUrl());
				dealSvc.evictCacheDealCount(dealId);
			}
		}
	}
}
