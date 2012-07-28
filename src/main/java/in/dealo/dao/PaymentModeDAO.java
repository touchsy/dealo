package in.dealo.dao;

import java.util.List;

import in.dealo.entity.PaymentMode;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = PaymentMode.class)
public interface PaymentModeDAO {
	List<PaymentMode> findByEnabled(Boolean enabled);
}
