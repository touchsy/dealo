// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.ActivityType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect ActivityType_Roo_Jpa_Entity {
    
    declare @type: ActivityType: @Entity;
    
    declare @type: ActivityType: @Table(name = "activity_type");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer ActivityType.id;
    
    public Integer ActivityType.getId() {
        return this.id;
    }
    
    public void ActivityType.setId(Integer id) {
        this.id = id;
    }
    
}