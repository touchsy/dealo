package in.dealo.dao;

import in.dealo.entity.PaymentGateway;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = PaymentGateway.class)
public interface PaymentGatewayDAO {
}
