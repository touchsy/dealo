package in.dealo.dao;

import in.dealo.entity.DealDetail;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DealDetail.class)
public interface DealDetailDAO {
}
