package in.dealo.dao;

import in.dealo.entity.PromoCode;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = PromoCode.class)
public interface PromoCodeDAO {
}
