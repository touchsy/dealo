package in.dealo.web.controller;

import in.dealo.entity.DealDetail;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/dealdetails")
@Controller
@RooWebScaffold(path = "su/dealdetails", formBackingObject = DealDetail.class)
public class DealDetailController {
}
