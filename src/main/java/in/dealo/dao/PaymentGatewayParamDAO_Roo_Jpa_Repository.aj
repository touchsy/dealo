// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.dao;

import in.dealo.dao.PaymentGatewayParamDAO;
import in.dealo.entity.PaymentGatewayParam;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect PaymentGatewayParamDAO_Roo_Jpa_Repository {
    
    declare parents: PaymentGatewayParamDAO extends JpaRepository<PaymentGatewayParam, Integer>;
    
    declare parents: PaymentGatewayParamDAO extends JpaSpecificationExecutor<PaymentGatewayParam>;
    
    declare @type: PaymentGatewayParamDAO: @Repository;
    
}
