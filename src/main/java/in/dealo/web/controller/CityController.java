package in.dealo.web.controller;

import in.dealo.entity.City;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/citys")
@Controller
@RooWebScaffold(path = "su/citys", formBackingObject = City.class)
public class CityController {
}
