// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.svc;

import in.dealo.entity.DealOrder;
import in.dealo.svc.DealOrderSvc;
import java.util.List;

privileged aspect DealOrderSvc_Roo_Service {
    
    public abstract long DealOrderSvc.countAllDealOrders();    
    public abstract void DealOrderSvc.deleteDealOrder(DealOrder dealOrder);    
    public abstract DealOrder DealOrderSvc.findDealOrder(Integer id);    
    public abstract List<DealOrder> DealOrderSvc.findAllDealOrders();    
    public abstract List<DealOrder> DealOrderSvc.findDealOrderEntries(int firstResult, int maxResults);    
    public abstract void DealOrderSvc.saveDealOrder(DealOrder dealOrder);    
    public abstract DealOrder DealOrderSvc.updateDealOrder(DealOrder dealOrder);    
}
