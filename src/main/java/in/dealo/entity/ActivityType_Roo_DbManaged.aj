// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.ActivityType;
import javax.persistence.Column;

privileged aspect ActivityType_Roo_DbManaged {
    
    @Column(name = "name", length = 48)
    private String ActivityType.name;
    
    @Column(name = "code", length = 8, unique = true)
    private String ActivityType.code;
    
    @Column(name = "enabled")
    private Boolean ActivityType.enabled;
    
    public String ActivityType.getName() {
        return name;
    }
    
    public void ActivityType.setName(String name) {
        this.name = name;
    }
    
    public String ActivityType.getCode() {
        return code;
    }
    
    public void ActivityType.setCode(String code) {
        this.code = code;
    }
    
    public Boolean ActivityType.getEnabled() {
        return enabled;
    }
    
    public void ActivityType.setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }
    
}
