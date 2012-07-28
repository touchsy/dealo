package in.dealo.dao;

import in.dealo.entity.DealOrder;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DealOrder.class)
public interface DealOrderDAO {
	DealOrder findByCode(String code);
}
