// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.PromoCode;
import in.dealo.entity.PromoCodeType;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect PromoCode_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "promo_code_type", referencedColumnName = "id", nullable = false)
    private PromoCodeType PromoCode.promoCodeType;
    
    @Column(name = "code", length = 48, unique = true)
    @NotNull
    private String PromoCode.code;
    
    @Column(name = "email", length = 256)
    private String PromoCode.email;
    
    @Column(name = "mobile", length = 20)
    private String PromoCode.mobile;
    
    @Column(name = "exp_date")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date PromoCode.expDate;
    
    @Column(name = "times_used")
    @NotNull
    private Integer PromoCode.timesUsed;
    
    @Column(name = "max_count")
    @NotNull
    private Integer PromoCode.maxCount;
    
    @Column(name = "created", updatable = false)
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date PromoCode.created = new Date();
    
    @Column(name = "modified")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date PromoCode.modified;
    
    public PromoCodeType PromoCode.getPromoCodeType() {
        return promoCodeType;
    }
    
    public void PromoCode.setPromoCodeType(PromoCodeType promoCodeType) {
        this.promoCodeType = promoCodeType;
    }
    
    public String PromoCode.getCode() {
        return code;
    }
    
    public void PromoCode.setCode(String code) {
        this.code = code;
    }
    
    public String PromoCode.getEmail() {
        return email;
    }
    
    public void PromoCode.setEmail(String email) {
        this.email = email;
    }
    
    public String PromoCode.getMobile() {
        return mobile;
    }
    
    public void PromoCode.setMobile(String mobile) {
        this.mobile = mobile;
    }
    
    public Date PromoCode.getExpDate() {
        return expDate;
    }
    
    public void PromoCode.setExpDate(Date expDate) {
        this.expDate = expDate;
    }
    
    public Integer PromoCode.getTimesUsed() {
        return timesUsed;
    }
    
    public void PromoCode.setTimesUsed(Integer timesUsed) {
        this.timesUsed = timesUsed;
    }
    
    public Integer PromoCode.getMaxCount() {
        return maxCount;
    }
    
    public void PromoCode.setMaxCount(Integer maxCount) {
        this.maxCount = maxCount;
    }
    
    public Date PromoCode.getCreated() {
        return created;
    }
    
    public void PromoCode.setCreated(Date created) {
        this.created = created;
    }
    
    public Date PromoCode.getModified() {
        return modified;
    }
    
    public void PromoCode.setModified(Date modified) {
        this.modified = modified;
    }
    
}
