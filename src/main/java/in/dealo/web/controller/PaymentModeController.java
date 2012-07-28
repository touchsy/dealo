package in.dealo.web.controller;

import in.dealo.entity.PaymentMode;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/paymentmodes")
@Controller
@RooWebScaffold(path = "su/paymentmodes", formBackingObject = PaymentMode.class)
public class PaymentModeController {
}
