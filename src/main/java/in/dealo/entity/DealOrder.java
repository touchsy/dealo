package in.dealo.entity;

import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(versionField = "", table = "deal_order")
@RooDbManaged(automaticallyDelete = true)
public class DealOrder {

    public static final int ORDER_STATUS_NEW = 0;

    public static final int ORDER_STATUS_SUBMITTED = 1;

    public static final int ORDER_STATUS_FAILED = 2;

    public static final int ORDER_STATUS_REJECTED = 3;

    public static final int ORDER_STATUS_SHIPPINGDONE = 4;

    public static final int ORDER_STATUS_PAYMENT_COMPLETED = 5;
}
