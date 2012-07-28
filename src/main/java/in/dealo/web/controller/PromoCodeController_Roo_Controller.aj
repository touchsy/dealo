// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.web.controller;

import in.dealo.entity.PromoCode;
import in.dealo.svc.PromoCodeSvc;
import in.dealo.svc.PromoCodeTypeSvc;
import in.dealo.web.controller.PromoCodeController;
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

privileged aspect PromoCodeController_Roo_Controller {
    
    @Autowired
    PromoCodeSvc PromoCodeController.promoCodeSvc;
    
    @Autowired
    PromoCodeTypeSvc PromoCodeController.promoCodeTypeSvc;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String PromoCodeController.create(@Valid PromoCode promoCode, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, promoCode);
            return "su/promocodes/create";
        }
        uiModel.asMap().clear();
        promoCodeSvc.savePromoCode(promoCode);
        return "redirect:/su/promocodes/" + encodeUrlPathSegment(promoCode.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String PromoCodeController.createForm(Model uiModel) {
        populateEditForm(uiModel, new PromoCode());
        return "su/promocodes/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String PromoCodeController.show(@PathVariable("id") Integer id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("promocode", promoCodeSvc.findPromoCode(id));
        uiModel.addAttribute("itemId", id);
        return "su/promocodes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String PromoCodeController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("promocodes", promoCodeSvc.findPromoCodeEntries(firstResult, sizeNo));
            float nrOfPages = (float) promoCodeSvc.countAllPromoCodes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("promocodes", promoCodeSvc.findAllPromoCodes());
        }
        addDateTimeFormatPatterns(uiModel);
        return "su/promocodes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String PromoCodeController.update(@Valid PromoCode promoCode, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, promoCode);
            return "su/promocodes/update";
        }
        uiModel.asMap().clear();
        promoCodeSvc.updatePromoCode(promoCode);
        return "redirect:/su/promocodes/" + encodeUrlPathSegment(promoCode.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String PromoCodeController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, promoCodeSvc.findPromoCode(id));
        return "su/promocodes/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String PromoCodeController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PromoCode promoCode = promoCodeSvc.findPromoCode(id);
        promoCodeSvc.deletePromoCode(promoCode);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/su/promocodes";
    }
    
    void PromoCodeController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("promoCode_expdate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("promoCode_created_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("promoCode_modified_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void PromoCodeController.populateEditForm(Model uiModel, PromoCode promoCode) {
        uiModel.addAttribute("promoCode", promoCode);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("promocodetypes", promoCodeTypeSvc.findAllPromoCodeTypes());
    }
    
    String PromoCodeController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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