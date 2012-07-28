package in.dealo.dao;

import in.dealo.entity.DealStatus;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DealStatus.class)
public interface DealStatusDAO {
}
