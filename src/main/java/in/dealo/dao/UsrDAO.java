package in.dealo.dao;

import in.dealo.entity.Usr;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Usr.class)
public interface UsrDAO {
}
