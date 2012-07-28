// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.Coupon;
import in.dealo.entity.Deal;
import in.dealo.entity.DealOrder;
import in.dealo.entity.DealOrderHistory;
import in.dealo.entity.PaymentGateway;
import in.dealo.entity.PaymentMode;
import in.dealo.entity.Usr;
import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect DealOrder_Roo_DbManaged {
    
    @OneToMany(mappedBy = "dealOrder")
    private Set<Coupon> DealOrder.coupons;
    
    @OneToMany(mappedBy = "dealOrder")
    private Set<DealOrderHistory> DealOrder.dealOrderHistories;
    
    @ManyToOne
    @JoinColumn(name = "deal", referencedColumnName = "id", nullable = false)
    private Deal DealOrder.deal;
    
    @ManyToOne
    @JoinColumn(name = "usr", referencedColumnName = "id")
    private Usr DealOrder.usr;
    
    @ManyToOne
    @JoinColumn(name = "payment_mode", referencedColumnName = "id")
    private PaymentMode DealOrder.paymentMode;
    
    @ManyToOne
    @JoinColumn(name = "payment_gateway", referencedColumnName = "id")
    private PaymentGateway DealOrder.paymentGateway;
    
    @Column(name = "mobile", length = 16)
    private String DealOrder.mobile;
    
    @Column(name = "email", length = 256)
    private String DealOrder.email;
    
    @Column(name = "code", length = 48)
    @NotNull
    private String DealOrder.code;
    
    @Column(name = "payment_txn_id")
    private Integer DealOrder.paymentTxnId;
    
    @Column(name = "pg_outgoing_params", length = 512)
    private String DealOrder.pgOutgoingParams;
    
    @Column(name = "pg_incoming_params", length = 512)
    private String DealOrder.pgIncomingParams;
    
    @Column(name = "promo_code", length = 48)
    private String DealOrder.promoCode;
    
    @Column(name = "promo_value")
    private Integer DealOrder.promoValue;
    
    @Column(name = "points_redeemed")
    private Integer DealOrder.pointsRedeemed;
    
    @Column(name = "total_amount")
    @NotNull
    private Integer DealOrder.totalAmount;
    
    @Column(name = "paid_amount")
    private Integer DealOrder.paidAmount;
    
    @Column(name = "address1", length = 255)
    private String DealOrder.address1;
    
    @Column(name = "address2", length = 255)
    private String DealOrder.address2;
    
    @Column(name = "city", length = 48)
    private String DealOrder.city;
    
    @Column(name = "addrstate", length = 48)
    private String DealOrder.addrstate;
    
    @Column(name = "country", length = 48)
    private String DealOrder.country;
    
    @Column(name = "postal_code", length = 10)
    private String DealOrder.postalCode;
    
    @Column(name = "status")
    @NotNull
    private Integer DealOrder.status;
    
    @Column(name = "created", updatable = false)
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date DealOrder.created = new Date();
    
    @Column(name = "modified")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date DealOrder.modified;
    
    @Column(name = "quantity")
    private Integer DealOrder.quantity;
    
    @Column(name = "selling_price")
    private Integer DealOrder.sellingPrice;
    
    public Set<Coupon> DealOrder.getCoupons() {
        return coupons;
    }
    
    public void DealOrder.setCoupons(Set<Coupon> coupons) {
        this.coupons = coupons;
    }
    
    public Set<DealOrderHistory> DealOrder.getDealOrderHistories() {
        return dealOrderHistories;
    }
    
    public void DealOrder.setDealOrderHistories(Set<DealOrderHistory> dealOrderHistories) {
        this.dealOrderHistories = dealOrderHistories;
    }
    
    public Deal DealOrder.getDeal() {
        return deal;
    }
    
    public void DealOrder.setDeal(Deal deal) {
        this.deal = deal;
    }
    
    public Usr DealOrder.getUsr() {
        return usr;
    }
    
    public void DealOrder.setUsr(Usr usr) {
        this.usr = usr;
    }
    
    public PaymentMode DealOrder.getPaymentMode() {
        return paymentMode;
    }
    
    public void DealOrder.setPaymentMode(PaymentMode paymentMode) {
        this.paymentMode = paymentMode;
    }
    
    public PaymentGateway DealOrder.getPaymentGateway() {
        return paymentGateway;
    }
    
    public void DealOrder.setPaymentGateway(PaymentGateway paymentGateway) {
        this.paymentGateway = paymentGateway;
    }
    
    public String DealOrder.getMobile() {
        return mobile;
    }
    
    public void DealOrder.setMobile(String mobile) {
        this.mobile = mobile;
    }
    
    public String DealOrder.getEmail() {
        return email;
    }
    
    public void DealOrder.setEmail(String email) {
        this.email = email;
    }
    
    public String DealOrder.getCode() {
        return code;
    }
    
    public void DealOrder.setCode(String code) {
        this.code = code;
    }
    
    public Integer DealOrder.getPaymentTxnId() {
        return paymentTxnId;
    }
    
    public void DealOrder.setPaymentTxnId(Integer paymentTxnId) {
        this.paymentTxnId = paymentTxnId;
    }
    
    public String DealOrder.getPgOutgoingParams() {
        return pgOutgoingParams;
    }
    
    public void DealOrder.setPgOutgoingParams(String pgOutgoingParams) {
        this.pgOutgoingParams = pgOutgoingParams;
    }
    
    public String DealOrder.getPgIncomingParams() {
        return pgIncomingParams;
    }
    
    public void DealOrder.setPgIncomingParams(String pgIncomingParams) {
        this.pgIncomingParams = pgIncomingParams;
    }
    
    public String DealOrder.getPromoCode() {
        return promoCode;
    }
    
    public void DealOrder.setPromoCode(String promoCode) {
        this.promoCode = promoCode;
    }
    
    public Integer DealOrder.getPromoValue() {
        return promoValue;
    }
    
    public void DealOrder.setPromoValue(Integer promoValue) {
        this.promoValue = promoValue;
    }
    
    public Integer DealOrder.getPointsRedeemed() {
        return pointsRedeemed;
    }
    
    public void DealOrder.setPointsRedeemed(Integer pointsRedeemed) {
        this.pointsRedeemed = pointsRedeemed;
    }
    
    public Integer DealOrder.getTotalAmount() {
        return totalAmount;
    }
    
    public void DealOrder.setTotalAmount(Integer totalAmount) {
        this.totalAmount = totalAmount;
    }
    
    public Integer DealOrder.getPaidAmount() {
        return paidAmount;
    }
    
    public void DealOrder.setPaidAmount(Integer paidAmount) {
        this.paidAmount = paidAmount;
    }
    
    public String DealOrder.getAddress1() {
        return address1;
    }
    
    public void DealOrder.setAddress1(String address1) {
        this.address1 = address1;
    }
    
    public String DealOrder.getAddress2() {
        return address2;
    }
    
    public void DealOrder.setAddress2(String address2) {
        this.address2 = address2;
    }
    
    public String DealOrder.getCity() {
        return city;
    }
    
    public void DealOrder.setCity(String city) {
        this.city = city;
    }
    
    public String DealOrder.getAddrstate() {
        return addrstate;
    }
    
    public void DealOrder.setAddrstate(String addrstate) {
        this.addrstate = addrstate;
    }
    
    public String DealOrder.getCountry() {
        return country;
    }
    
    public void DealOrder.setCountry(String country) {
        this.country = country;
    }
    
    public String DealOrder.getPostalCode() {
        return postalCode;
    }
    
    public void DealOrder.setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }
    
    public Integer DealOrder.getStatus() {
        return status;
    }
    
    public void DealOrder.setStatus(Integer status) {
        this.status = status;
    }
    
    public Date DealOrder.getCreated() {
        return created;
    }
    
    public void DealOrder.setCreated(Date created) {
        this.created = created;
    }
    
    public Date DealOrder.getModified() {
        return modified;
    }
    
    public void DealOrder.setModified(Date modified) {
        this.modified = modified;
    }
    
    public Integer DealOrder.getQuantity() {
        return quantity;
    }
    
    public void DealOrder.setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
    
    public Integer DealOrder.getSellingPrice() {
        return sellingPrice;
    }
    
    public void DealOrder.setSellingPrice(Integer sellingPrice) {
        this.sellingPrice = sellingPrice;
    }
    
}
