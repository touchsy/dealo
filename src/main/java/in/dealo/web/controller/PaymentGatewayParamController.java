package in.dealo.web.controller;

import in.dealo.entity.PaymentGatewayParam;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/paymentgatewayparams")
@Controller
@RooWebScaffold(path = "su/paymentgatewayparams", formBackingObject = PaymentGatewayParam.class)
public class PaymentGatewayParamController {
}
