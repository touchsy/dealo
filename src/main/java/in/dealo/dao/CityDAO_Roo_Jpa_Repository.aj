// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.dao;

import in.dealo.dao.CityDAO;
import in.dealo.entity.City;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect CityDAO_Roo_Jpa_Repository {
    
    declare parents: CityDAO extends JpaRepository<City, Integer>;
    
    declare parents: CityDAO extends JpaSpecificationExecutor<City>;
    
    declare @type: CityDAO: @Repository;
    
}
