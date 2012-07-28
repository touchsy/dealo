// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.svc;

import in.dealo.entity.MessageTemplate;
import in.dealo.svc.MessageTemplateSvc;
import java.util.List;

privileged aspect MessageTemplateSvc_Roo_Service {
    
    public abstract long MessageTemplateSvc.countAllMessageTemplates();    
    public abstract void MessageTemplateSvc.deleteMessageTemplate(MessageTemplate messageTemplate);    
    public abstract MessageTemplate MessageTemplateSvc.findMessageTemplate(Integer id);    
    public abstract List<MessageTemplate> MessageTemplateSvc.findAllMessageTemplates();    
    public abstract List<MessageTemplate> MessageTemplateSvc.findMessageTemplateEntries(int firstResult, int maxResults);    
    public abstract void MessageTemplateSvc.saveMessageTemplate(MessageTemplate messageTemplate);    
    public abstract MessageTemplate MessageTemplateSvc.updateMessageTemplate(MessageTemplate messageTemplate);    
}