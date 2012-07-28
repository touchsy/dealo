package in.dealo.dao;

import in.dealo.entity.DealCategory;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DealCategory.class)
public interface DealCategoryDAO {
}
