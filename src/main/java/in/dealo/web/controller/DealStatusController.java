package in.dealo.web.controller;

import in.dealo.entity.DealStatus;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/dealstatuses")
@Controller
@RooWebScaffold(path = "su/dealstatuses", formBackingObject = DealStatus.class)
public class DealStatusController {
}
