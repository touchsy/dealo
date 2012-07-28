package in.dealo.web.controller;

import in.dealo.entity.Usr;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/usrs")
@Controller
@RooWebScaffold(path = "su/usrs", formBackingObject = Usr.class)
public class UsrController {
}
