package in.dealo.web.controller;

import in.dealo.entity.Vendor;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/vendors")
@Controller
@RooWebScaffold(path = "su/vendors", formBackingObject = Vendor.class)
public class VendorController {
}
