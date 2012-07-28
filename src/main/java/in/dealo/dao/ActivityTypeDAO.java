package in.dealo.dao;

import in.dealo.entity.ActivityType;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = ActivityType.class)
public interface ActivityTypeDAO {
}
