package in.dealo.web.controller;

import in.dealo.entity.Subscriber;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/subscribers")
@Controller
@RooWebScaffold(path = "su/subscribers", formBackingObject = Subscriber.class)
public class SubscriberController {
}
