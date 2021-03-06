// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.MessageTemplate;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect MessageTemplate_Roo_DbManaged {
    
    @Column(name = "name", length = 45, unique = true)
    @NotNull
    private String MessageTemplate.name;
    
    @Column(name = "subject_template", length = 256)
    private String MessageTemplate.subjectTemplate;
    
    @Column(name = "body_template")
    @NotNull
    private String MessageTemplate.bodyTemplate;
    
    @Column(name = "created", updatable = false)
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date MessageTemplate.created = new Date();
    
    @Column(name = "modified")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date MessageTemplate.modified;
    
    public String MessageTemplate.getName() {
        return name;
    }
    
    public void MessageTemplate.setName(String name) {
        this.name = name;
    }
    
    public String MessageTemplate.getSubjectTemplate() {
        return subjectTemplate;
    }
    
    public void MessageTemplate.setSubjectTemplate(String subjectTemplate) {
        this.subjectTemplate = subjectTemplate;
    }
    
    public String MessageTemplate.getBodyTemplate() {
        return bodyTemplate;
    }
    
    public void MessageTemplate.setBodyTemplate(String bodyTemplate) {
        this.bodyTemplate = bodyTemplate;
    }
    
    public Date MessageTemplate.getCreated() {
        return created;
    }
    
    public void MessageTemplate.setCreated(Date created) {
        this.created = created;
    }
    
    public Date MessageTemplate.getModified() {
        return modified;
    }
    
    public void MessageTemplate.setModified(Date modified) {
        this.modified = modified;
    }
    
}
