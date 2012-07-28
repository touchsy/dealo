// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.web.controller;

import in.dealo.entity.ActivityType;
import in.dealo.svc.ActivityTypeSvc;
import in.dealo.web.controller.ActivityTypeController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect ActivityTypeController_Roo_Controller {
    
    @Autowired
    ActivityTypeSvc ActivityTypeController.activityTypeSvc;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ActivityTypeController.create(@Valid ActivityType activityType, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, activityType);
            return "su/activitytypes/create";
        }
        uiModel.asMap().clear();
        activityTypeSvc.saveActivityType(activityType);
        return "redirect:/su/activitytypes/" + encodeUrlPathSegment(activityType.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ActivityTypeController.createForm(Model uiModel) {
        populateEditForm(uiModel, new ActivityType());
        return "su/activitytypes/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String ActivityTypeController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("activitytype", activityTypeSvc.findActivityType(id));
        uiModel.addAttribute("itemId", id);
        return "su/activitytypes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ActivityTypeController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("activitytypes", activityTypeSvc.findActivityTypeEntries(firstResult, sizeNo));
            float nrOfPages = (float) activityTypeSvc.countAllActivityTypes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("activitytypes", activityTypeSvc.findAllActivityTypes());
        }
        return "su/activitytypes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ActivityTypeController.update(@Valid ActivityType activityType, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, activityType);
            return "su/activitytypes/update";
        }
        uiModel.asMap().clear();
        activityTypeSvc.updateActivityType(activityType);
        return "redirect:/su/activitytypes/" + encodeUrlPathSegment(activityType.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String ActivityTypeController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, activityTypeSvc.findActivityType(id));
        return "su/activitytypes/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String ActivityTypeController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ActivityType activityType = activityTypeSvc.findActivityType(id);
        activityTypeSvc.deleteActivityType(activityType);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/su/activitytypes";
    }
    
    void ActivityTypeController.populateEditForm(Model uiModel, ActivityType activityType) {
        uiModel.addAttribute("activityType", activityType);
    }
    
    String ActivityTypeController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}