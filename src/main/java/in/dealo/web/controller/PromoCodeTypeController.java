package in.dealo.web.controller;

import in.dealo.entity.PromoCodeType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/promocodetypes")
@Controller
@RooWebScaffold(path = "su/promocodetypes", formBackingObject = PromoCodeType.class)
public class PromoCodeTypeController {
}
