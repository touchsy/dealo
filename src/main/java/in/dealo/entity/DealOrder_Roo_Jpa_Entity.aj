// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.DealOrder;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect DealOrder_Roo_Jpa_Entity {
    
    declare @type: DealOrder: @Entity;
    
    declare @type: DealOrder: @Table(name = "deal_order");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer DealOrder.id;
    
    public Integer DealOrder.getId() {
        return this.id;
    }
    
    public void DealOrder.setId(Integer id) {
        this.id = id;
    }
    
}