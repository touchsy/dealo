// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.svc;

import in.dealo.dao.PromoCodeDAO;
import in.dealo.entity.PromoCode;
import in.dealo.svc.PromoCodeSvcImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PromoCodeSvcImpl_Roo_Service {
    
    declare @type: PromoCodeSvcImpl: @Service;
    
    declare @type: PromoCodeSvcImpl: @Transactional;
    
    @Autowired
    PromoCodeDAO PromoCodeSvcImpl.promoCodeDAO;
    
    public long PromoCodeSvcImpl.countAllPromoCodes() {
        return promoCodeDAO.count();
    }
    
    public void PromoCodeSvcImpl.deletePromoCode(PromoCode promoCode) {
        promoCodeDAO.delete(promoCode);
    }
    
    public PromoCode PromoCodeSvcImpl.findPromoCode(Integer id) {
        return promoCodeDAO.findOne(id);
    }
    
    public List<PromoCode> PromoCodeSvcImpl.findAllPromoCodes() {
        return promoCodeDAO.findAll();
    }
    
    public List<PromoCode> PromoCodeSvcImpl.findPromoCodeEntries(int firstResult, int maxResults) {
        return promoCodeDAO.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void PromoCodeSvcImpl.savePromoCode(PromoCode promoCode) {
        promoCodeDAO.save(promoCode);
    }
    
    public PromoCode PromoCodeSvcImpl.updatePromoCode(PromoCode promoCode) {
        return promoCodeDAO.save(promoCode);
    }
    
}
