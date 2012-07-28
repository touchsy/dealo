package in.dealo.dao;

import in.dealo.entity.DealOrderHistory;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = DealOrderHistory.class)
public interface DealOrderHistoryDAO {
}
