// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.svc;

import in.dealo.entity.DealOrderHistory;
import in.dealo.svc.DealOrderHistorySvc;
import java.util.List;

privileged aspect DealOrderHistorySvc_Roo_Service {
    
    public abstract long DealOrderHistorySvc.countAllDealOrderHistorys();    
    public abstract void DealOrderHistorySvc.deleteDealOrderHistory(DealOrderHistory dealOrderHistory);    
    public abstract DealOrderHistory DealOrderHistorySvc.findDealOrderHistory(Integer id);    
    public abstract List<DealOrderHistory> DealOrderHistorySvc.findAllDealOrderHistorys();    
    public abstract List<DealOrderHistory> DealOrderHistorySvc.findDealOrderHistoryEntries(int firstResult, int maxResults);    
    public abstract void DealOrderHistorySvc.saveDealOrderHistory(DealOrderHistory dealOrderHistory);    
    public abstract DealOrderHistory DealOrderHistorySvc.updateDealOrderHistory(DealOrderHistory dealOrderHistory);    
}