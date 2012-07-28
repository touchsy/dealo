package in.dealo.web.controller;

import in.dealo.entity.ActivityType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/activitytypes")
@Controller
@RooWebScaffold(path = "su/activitytypes", formBackingObject = ActivityType.class)
public class ActivityTypeController {
}
