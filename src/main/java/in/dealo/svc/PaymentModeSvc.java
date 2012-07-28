package in.dealo.svc;

import in.dealo.entity.PaymentMode;

import java.util.List;

import org.springframework.roo.addon.layers.service.RooService;

@RooService(domainTypes = { in.dealo.entity.PaymentMode.class })
public interface PaymentModeSvc {
	List<PaymentMode> getActivePaymentModes();
}
