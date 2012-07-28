package in.dealo.entity;

import javax.persistence.Column;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField = "", table = "deal")
@RooDbManaged(automaticallyDelete = true)
public class Deal {

    @Column(name = "page_url", length = 256)
    private String pageUrl;

    @Column(name = "coupon_type")
    private boolean couponType;
}
