// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.dao;

import in.dealo.dao.SubscriberDAO;
import in.dealo.entity.Subscriber;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect SubscriberDAO_Roo_Jpa_Repository {
    
    declare parents: SubscriberDAO extends JpaRepository<Subscriber, Integer>;
    
    declare parents: SubscriberDAO extends JpaSpecificationExecutor<Subscriber>;
    
    declare @type: SubscriberDAO: @Repository;
    
}