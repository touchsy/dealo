package in.dealo.dao;

import in.dealo.entity.PaymentGatewayParam;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = PaymentGatewayParam.class)
public interface PaymentGatewayParamDAO {
}
