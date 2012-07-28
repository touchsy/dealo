// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.svc;

import in.dealo.entity.PromoCode;
import in.dealo.svc.PromoCodeSvc;
import java.util.List;

privileged aspect PromoCodeSvc_Roo_Service {
    
    public abstract long PromoCodeSvc.countAllPromoCodes();    
    public abstract void PromoCodeSvc.deletePromoCode(PromoCode promoCode);    
    public abstract PromoCode PromoCodeSvc.findPromoCode(Integer id);    
    public abstract List<PromoCode> PromoCodeSvc.findAllPromoCodes();    
    public abstract List<PromoCode> PromoCodeSvc.findPromoCodeEntries(int firstResult, int maxResults);    
    public abstract void PromoCodeSvc.savePromoCode(PromoCode promoCode);    
    public abstract PromoCode PromoCodeSvc.updatePromoCode(PromoCode promoCode);    
}
