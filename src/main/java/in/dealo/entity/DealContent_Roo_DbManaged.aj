// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.entity;

import in.dealo.entity.Deal;
import in.dealo.entity.DealContent;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect DealContent_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "deal", referencedColumnName = "id", nullable = false)
    private Deal DealContent.deal;
    
    @Column(name = "content_type", length = 48)
    @NotNull
    private String DealContent.contentType;
    
    @Column(name = "content_path", length = 256)
    private String DealContent.contentPath;
    
    @Column(name = "content")
    private String DealContent.content;
    
    @Column(name = "created", updatable = false)
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date DealContent.created = new Date();
    
    @Column(name = "modified")
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date DealContent.modified;
    
    public Deal DealContent.getDeal() {
        return deal;
    }
    
    public void DealContent.setDeal(Deal deal) {
        this.deal = deal;
    }
    
    public String DealContent.getContentType() {
        return contentType;
    }
    
    public void DealContent.setContentType(String contentType) {
        this.contentType = contentType;
    }
    
    public String DealContent.getContentPath() {
        return contentPath;
    }
    
    public void DealContent.setContentPath(String contentPath) {
        this.contentPath = contentPath;
    }
    
    public String DealContent.getContent() {
        return content;
    }
    
    public void DealContent.setContent(String content) {
        this.content = content;
    }
    
    public Date DealContent.getCreated() {
        return created;
    }
    
    public void DealContent.setCreated(Date created) {
        this.created = created;
    }
    
    public Date DealContent.getModified() {
        return modified;
    }
    
    public void DealContent.setModified(Date modified) {
        this.modified = modified;
    }
    
}