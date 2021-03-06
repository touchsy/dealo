// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.Deal;
import in.dealo.entity.Usr;
import in.dealo.entity.Vendor;
import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Vendor_Roo_DbManaged {
    
    @OneToMany(mappedBy = "vendor")
    private Set<Deal> Vendor.deals;
    
    @ManyToOne
    @JoinColumn(name = "usr", referencedColumnName = "id", nullable = false)
    private Usr Vendor.usr;
    
    @Column(name = "name", length = 256)
    @NotNull
    private String Vendor.name;
    
    @Column(name = "description")
    private String Vendor.description;
    
    @Column(name = "website", length = 512)
    private String Vendor.website;
    
    @Column(name = "created", updatable = false)
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date Vendor.created = new Date();
    
    public Set<Deal> Vendor.getDeals() {
        return deals;
    }
    
    public void Vendor.setDeals(Set<Deal> deals) {
        this.deals = deals;
    }
    
    public Usr Vendor.getUsr() {
        return usr;
    }
    
    public void Vendor.setUsr(Usr usr) {
        this.usr = usr;
    }
    
    public String Vendor.getName() {
        return name;
    }
    
    public void Vendor.setName(String name) {
        this.name = name;
    }
    
    public String Vendor.getDescription() {
        return description;
    }
    
    public void Vendor.setDescription(String description) {
        this.description = description;
    }
    
    public String Vendor.getWebsite() {
        return website;
    }
    
    public void Vendor.setWebsite(String website) {
        this.website = website;
    }
    
    public Date Vendor.getCreated() {
        return created;
    }
    
    public void Vendor.setCreated(Date created) {
        this.created = created;
    }
    
}
