// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.web.controller;

import in.dealo.entity.DealContent;
import in.dealo.svc.DealContentSvc;
import in.dealo.svc.DealSvc;
import in.dealo.web.controller.DealContentController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect DealContentController_Roo_Controller {
    
    @Autowired
    DealContentSvc DealContentController.dealContentSvc;
    
    @Autowired
    DealSvc DealContentController.dealSvc;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String DealContentController.create(@Valid DealContent dealContent, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, dealContent);
            return "su/dealcontents/create";
        }
        uiModel.asMap().clear();
        dealContentSvc.saveDealContent(dealContent);
        return "redirect:/su/dealcontents/" + encodeUrlPathSegment(dealContent.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String DealContentController.createForm(Model uiModel) {
        populateEditForm(uiModel, new DealContent());
        return "su/dealcontents/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String DealContentController.show(@PathVariable("id") Integer id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("dealcontent", dealContentSvc.findDealContent(id));
        uiModel.addAttribute("itemId", id);
        return "su/dealcontents/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String DealContentController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("dealcontents", dealContentSvc.findDealContentEntries(firstResult, sizeNo));
            float nrOfPages = (float) dealContentSvc.countAllDealContents() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("dealcontents", dealContentSvc.findAllDealContents());
        }
        addDateTimeFormatPatterns(uiModel);
        return "su/dealcontents/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String DealContentController.update(@Valid DealContent dealContent, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, dealContent);
            return "su/dealcontents/update";
        }
        uiModel.asMap().clear();
        dealContentSvc.updateDealContent(dealContent);
        return "redirect:/su/dealcontents/" + encodeUrlPathSegment(dealContent.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String DealContentController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, dealContentSvc.findDealContent(id));
        return "su/dealcontents/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String DealContentController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        DealContent dealContent = dealContentSvc.findDealContent(id);
        dealContentSvc.deleteDealContent(dealContent);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/su/dealcontents";
    }
    
    void DealContentController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("dealContent_created_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("dealContent_modified_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void DealContentController.populateEditForm(Model uiModel, DealContent dealContent) {
        uiModel.addAttribute("dealContent", dealContent);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("deals", dealSvc.findAllDeals());
    }
    
    String DealContentController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
