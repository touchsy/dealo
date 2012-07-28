package in.dealo.dao;

import in.dealo.entity.PromoCodeType;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = PromoCodeType.class)
public interface PromoCodeTypeDAO {
}
