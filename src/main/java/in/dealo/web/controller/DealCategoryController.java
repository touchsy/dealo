package in.dealo.web.controller;

import in.dealo.entity.DealCategory;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/dealcategorys")
@Controller
@RooWebScaffold(path = "su/dealcategorys", formBackingObject = DealCategory.class)
public class DealCategoryController {
}
