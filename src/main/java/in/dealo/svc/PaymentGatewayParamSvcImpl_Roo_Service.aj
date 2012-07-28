// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.svc;

import in.dealo.dao.PaymentGatewayParamDAO;
import in.dealo.entity.PaymentGatewayParam;
import in.dealo.svc.PaymentGatewayParamSvcImpl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PaymentGatewayParamSvcImpl_Roo_Service {
    
    declare @type: PaymentGatewayParamSvcImpl: @Service;
    
    declare @type: PaymentGatewayParamSvcImpl: @Transactional;
    
    @Autowired
    PaymentGatewayParamDAO PaymentGatewayParamSvcImpl.paymentGatewayParamDAO;
    
    public long PaymentGatewayParamSvcImpl.countAllPaymentGatewayParams() {
        return paymentGatewayParamDAO.count();
    }
    
    public void PaymentGatewayParamSvcImpl.deletePaymentGatewayParam(PaymentGatewayParam paymentGatewayParam) {
        paymentGatewayParamDAO.delete(paymentGatewayParam);
    }
    
    public PaymentGatewayParam PaymentGatewayParamSvcImpl.findPaymentGatewayParam(Integer id) {
        return paymentGatewayParamDAO.findOne(id);
    }
    
    public List<PaymentGatewayParam> PaymentGatewayParamSvcImpl.findAllPaymentGatewayParams() {
        return paymentGatewayParamDAO.findAll();
    }
    
    public List<PaymentGatewayParam> PaymentGatewayParamSvcImpl.findPaymentGatewayParamEntries(int firstResult, int maxResults) {
        return paymentGatewayParamDAO.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void PaymentGatewayParamSvcImpl.savePaymentGatewayParam(PaymentGatewayParam paymentGatewayParam) {
        paymentGatewayParamDAO.save(paymentGatewayParam);
    }
    
    public PaymentGatewayParam PaymentGatewayParamSvcImpl.updatePaymentGatewayParam(PaymentGatewayParam paymentGatewayParam) {
        return paymentGatewayParamDAO.save(paymentGatewayParam);
    }
    
}