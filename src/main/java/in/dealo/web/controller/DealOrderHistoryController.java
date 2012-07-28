package in.dealo.web.controller;

import in.dealo.entity.DealOrderHistory;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/dealorderhistorys")
@Controller
@RooWebScaffold(path = "su/dealorderhistorys", formBackingObject = DealOrderHistory.class)
public class DealOrderHistoryController {
}
