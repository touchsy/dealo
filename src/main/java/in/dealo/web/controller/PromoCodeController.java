package in.dealo.web.controller;

import in.dealo.entity.PromoCode;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/promocodes")
@Controller
@RooWebScaffold(path = "su/promocodes", formBackingObject = PromoCode.class)
public class PromoCodeController {
}
