// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.DealOrder;
import in.dealo.entity.PaymentGateway;
import in.dealo.entity.PaymentGatewayParam;
import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect PaymentGateway_Roo_DbManaged {
    
    @OneToMany(mappedBy = "paymentGateway")
    private Set<DealOrder> PaymentGateway.dealOrders;
    
    @OneToMany(mappedBy = "paymentGateway")
    private Set<PaymentGatewayParam> PaymentGateway.paymentGatewayParams;
    
    @Column(name = "name", length = 48)
    @NotNull
    private String PaymentGateway.name;
    
    @Column(name = "clazz", length = 512)
    private String PaymentGateway.clazz;
    
    @Column(name = "identification_code", length = 256)
    private String PaymentGateway.identificationCode;
    
    @Column(name = "secret_key", length = 256)
    private String PaymentGateway.secretKey;
    
    @Column(name = "redirect_url", length = 256)
    private String PaymentGateway.redirectUrl;
    
    @Column(name = "return_url", length = 256)
    private String PaymentGateway.returnUrl;
    
    @Column(name = "mode", length = 5)
    private String PaymentGateway.mode;
    
    @Column(name = "enabled")
    private Boolean PaymentGateway.enabled;
    
    @Column(name = "created", updatable = false)
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date PaymentGateway.created = new Date();
    
    @Column(name = "modified")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date PaymentGateway.modified;
    
    public Set<DealOrder> PaymentGateway.getDealOrders() {
        return dealOrders;
    }
    
    public void PaymentGateway.setDealOrders(Set<DealOrder> dealOrders) {
        this.dealOrders = dealOrders;
    }
    
    public Set<PaymentGatewayParam> PaymentGateway.getPaymentGatewayParams() {
        return paymentGatewayParams;
    }
    
    public void PaymentGateway.setPaymentGatewayParams(Set<PaymentGatewayParam> paymentGatewayParams) {
        this.paymentGatewayParams = paymentGatewayParams;
    }
    
    public String PaymentGateway.getName() {
        return name;
    }
    
    public void PaymentGateway.setName(String name) {
        this.name = name;
    }
    
    public String PaymentGateway.getClazz() {
        return clazz;
    }
    
    public void PaymentGateway.setClazz(String clazz) {
        this.clazz = clazz;
    }
    
    public String PaymentGateway.getIdentificationCode() {
        return identificationCode;
    }
    
    public void PaymentGateway.setIdentificationCode(String identificationCode) {
        this.identificationCode = identificationCode;
    }
    
    public String PaymentGateway.getSecretKey() {
        return secretKey;
    }
    
    public void PaymentGateway.setSecretKey(String secretKey) {
        this.secretKey = secretKey;
    }
    
    public String PaymentGateway.getRedirectUrl() {
        return redirectUrl;
    }
    
    public void PaymentGateway.setRedirectUrl(String redirectUrl) {
        this.redirectUrl = redirectUrl;
    }
    
    public String PaymentGateway.getReturnUrl() {
        return returnUrl;
    }
    
    public void PaymentGateway.setReturnUrl(String returnUrl) {
        this.returnUrl = returnUrl;
    }
    
    public String PaymentGateway.getMode() {
        return mode;
    }
    
    public void PaymentGateway.setMode(String mode) {
        this.mode = mode;
    }
    
    public Boolean PaymentGateway.getEnabled() {
        return enabled;
    }
    
    public void PaymentGateway.setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }
    
    public Date PaymentGateway.getCreated() {
        return created;
    }
    
    public void PaymentGateway.setCreated(Date created) {
        this.created = created;
    }
    
    public Date PaymentGateway.getModified() {
        return modified;
    }
    
    public void PaymentGateway.setModified(Date modified) {
        this.modified = modified;
    }
    
}
