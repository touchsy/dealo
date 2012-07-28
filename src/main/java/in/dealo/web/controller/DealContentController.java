package in.dealo.web.controller;

import in.dealo.entity.DealContent;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/dealcontents")
@Controller
@RooWebScaffold(path = "su/dealcontents", formBackingObject = DealContent.class)
public class DealContentController {
}
