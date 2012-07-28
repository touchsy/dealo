package in.dealo.svc;

import in.dealo.entity.DealOrder;

import org.springframework.roo.addon.layers.service.RooService;

@RooService(domainTypes = { in.dealo.entity.DealOrder.class })
public interface DealOrderSvc {
	void checkout(DealOrder dealOrder);
	void checkoutSuccess(DealOrder dealOrder);
	DealOrder findByCode(String code);
	void validateOrder(DealOrder dealOrder);
	void validateDealForOrder(DealOrder dealOrder);
	
}
