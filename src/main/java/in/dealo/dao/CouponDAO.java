package in.dealo.dao;

import in.dealo.entity.Coupon;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Coupon.class)
public interface CouponDAO {
}
