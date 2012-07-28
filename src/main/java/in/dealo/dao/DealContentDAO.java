package in.dealo.dao;

import in.dealo.entity.DealContent;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DealContent.class)
public interface DealContentDAO {
}
