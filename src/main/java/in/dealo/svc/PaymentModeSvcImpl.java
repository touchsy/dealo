package in.dealo.svc;

import in.dealo.entity.PaymentMode;

import java.util.List;

import org.springframework.cache.annotation.Cacheable;


public class PaymentModeSvcImpl implements PaymentModeSvc {
	@Override
	@Cacheable(value="default", key="#root.methodName")
	public List<PaymentMode> getActivePaymentModes(){
		return paymentModeDAO.findByEnabled(true);
	}
}
