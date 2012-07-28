// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.svc;

import in.dealo.entity.Subscriber;
import in.dealo.svc.SubscriberSvc;
import java.util.List;

privileged aspect SubscriberSvc_Roo_Service {
    
    public abstract long SubscriberSvc.countAllSubscribers();    
    public abstract void SubscriberSvc.deleteSubscriber(Subscriber subscriber);    
    public abstract Subscriber SubscriberSvc.findSubscriber(Integer id);    
    public abstract List<Subscriber> SubscriberSvc.findAllSubscribers();    
    public abstract List<Subscriber> SubscriberSvc.findSubscriberEntries(int firstResult, int maxResults);    
    public abstract void SubscriberSvc.saveSubscriber(Subscriber subscriber);    
    public abstract Subscriber SubscriberSvc.updateSubscriber(Subscriber subscriber);    
}