// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.dao;

import in.dealo.dao.DealOrderHistoryDAO;
import in.dealo.entity.DealOrderHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect DealOrderHistoryDAO_Roo_Jpa_Repository {
    
    declare parents: DealOrderHistoryDAO extends JpaRepository<DealOrderHistory, Integer>;
    
    declare parents: DealOrderHistoryDAO extends JpaSpecificationExecutor<DealOrderHistory>;
    
    declare @type: DealOrderHistoryDAO: @Repository;
    
}