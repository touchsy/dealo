// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.svc;

import in.dealo.entity.Coupon;
import in.dealo.svc.CouponSvc;
import java.util.List;

privileged aspect CouponSvc_Roo_Service {
    
    public abstract long CouponSvc.countAllCoupons();    
    public abstract void CouponSvc.deleteCoupon(Coupon coupon);    
    public abstract Coupon CouponSvc.findCoupon(Integer id);    
    public abstract List<Coupon> CouponSvc.findAllCoupons();    
    public abstract List<Coupon> CouponSvc.findCouponEntries(int firstResult, int maxResults);    
    public abstract void CouponSvc.saveCoupon(Coupon coupon);    
    public abstract Coupon CouponSvc.updateCoupon(Coupon coupon);    
}
