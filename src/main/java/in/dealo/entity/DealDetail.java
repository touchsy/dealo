package in.dealo.entity;

import javax.persistence.Column;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField = "", table = "deal_detail")
@RooDbManaged(automaticallyDelete = true)
public class DealDetail {

    @Column(name = "fineprints", length = 512)
    private String fineprints;
}
