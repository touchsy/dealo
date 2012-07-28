package in.dealo.dao;

import in.dealo.entity.Subscriber;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Subscriber.class)
public interface SubscriberDAO {
}
