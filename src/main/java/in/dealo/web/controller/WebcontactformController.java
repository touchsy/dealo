package in.dealo.web.controller;

import in.dealo.entity.Webcontactform;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/webcontactforms")
@Controller
@RooWebScaffold(path = "su/webcontactforms", formBackingObject = Webcontactform.class)
public class WebcontactformController {
}
