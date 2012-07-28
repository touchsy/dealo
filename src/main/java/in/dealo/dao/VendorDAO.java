package in.dealo.dao;

import in.dealo.entity.Vendor;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Vendor.class)
public interface VendorDAO {
}
