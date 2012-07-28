package in.dealo.web.controller;

import in.dealo.entity.MessageTemplate;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/messagetemplates")
@Controller
@RooWebScaffold(path = "su/messagetemplates", formBackingObject = MessageTemplate.class)
public class MessageTemplateController {
}
