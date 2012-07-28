// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.svc;

import in.dealo.entity.PaymentMode;
import in.dealo.svc.PaymentModeSvc;
import java.util.List;

privileged aspect PaymentModeSvc_Roo_Service {
    
    public abstract long PaymentModeSvc.countAllPaymentModes();    
    public abstract void PaymentModeSvc.deletePaymentMode(PaymentMode paymentMode);    
    public abstract PaymentMode PaymentModeSvc.findPaymentMode(Integer id);    
    public abstract List<PaymentMode> PaymentModeSvc.findAllPaymentModes();    
    public abstract List<PaymentMode> PaymentModeSvc.findPaymentModeEntries(int firstResult, int maxResults);    
    public abstract void PaymentModeSvc.savePaymentMode(PaymentMode paymentMode);    
    public abstract PaymentMode PaymentModeSvc.updatePaymentMode(PaymentMode paymentMode);    
}
