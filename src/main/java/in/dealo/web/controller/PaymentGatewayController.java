package in.dealo.web.controller;

import in.dealo.entity.PaymentGateway;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/paymentgateways")
@Controller
@RooWebScaffold(path = "su/paymentgateways", formBackingObject = PaymentGateway.class)
public class PaymentGatewayController {
}
