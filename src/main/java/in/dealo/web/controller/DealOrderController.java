package in.dealo.web.controller;

import in.dealo.entity.DealOrder;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/dealorders")
@Controller
@RooWebScaffold(path = "su/dealorders", formBackingObject = DealOrder.class)
public class DealOrderController {
}
