// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.PromoCode;
import in.dealo.entity.PromoCodeType;
import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect PromoCodeType_Roo_DbManaged {
    
    @OneToMany(mappedBy = "promoCodeType")
    private Set<PromoCode> PromoCodeType.promoCodes;
    
    @Column(name = "name", length = 48)
    @NotNull
    private String PromoCodeType.name;
    
    @Column(name = "expression_text", length = 256)
    @NotNull
    private String PromoCodeType.expressionText;
    
    @Column(name = "created", updatable = false)
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date PromoCodeType.created = new Date();
    
    @Column(name = "modified")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date PromoCodeType.modified;
    
    public Set<PromoCode> PromoCodeType.getPromoCodes() {
        return promoCodes;
    }
    
    public void PromoCodeType.setPromoCodes(Set<PromoCode> promoCodes) {
        this.promoCodes = promoCodes;
    }
    
    public String PromoCodeType.getName() {
        return name;
    }
    
    public void PromoCodeType.setName(String name) {
        this.name = name;
    }
    
    public String PromoCodeType.getExpressionText() {
        return expressionText;
    }
    
    public void PromoCodeType.setExpressionText(String expressionText) {
        this.expressionText = expressionText;
    }
    
    public Date PromoCodeType.getCreated() {
        return created;
    }
    
    public void PromoCodeType.setCreated(Date created) {
        this.created = created;
    }
    
    public Date PromoCodeType.getModified() {
        return modified;
    }
    
    public void PromoCodeType.setModified(Date modified) {
        this.modified = modified;
    }
    
}
