// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.svc;

import in.dealo.entity.Deal;
import in.dealo.svc.DealSvc;
import java.util.List;

privileged aspect DealSvc_Roo_Service {
    
    public abstract long DealSvc.countAllDeals();    
    public abstract void DealSvc.deleteDeal(Deal deal);    
    public abstract Deal DealSvc.findDeal(Integer id);    
    public abstract List<Deal> DealSvc.findAllDeals();    
    public abstract List<Deal> DealSvc.findDealEntries(int firstResult, int maxResults);    
    public abstract void DealSvc.saveDeal(Deal deal);    
    public abstract Deal DealSvc.updateDeal(Deal deal);    
}
