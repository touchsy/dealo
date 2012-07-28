package in.dealo.dao;

import in.dealo.entity.Deal;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Deal.class)
public interface DealDAO {
	Deal findByPageUrl(String pageUrl);
}
