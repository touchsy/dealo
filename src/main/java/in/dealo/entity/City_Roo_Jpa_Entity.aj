// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.City;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect City_Roo_Jpa_Entity {
    
    declare @type: City: @Entity;
    
    declare @type: City: @Table(name = "city");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer City.id;
    
    public Integer City.getId() {
        return this.id;
    }
    
    public void City.setId(Integer id) {
        this.id = id;
    }
    
}
