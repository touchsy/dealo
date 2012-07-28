package in.dealo.web.controller;

import in.dealo.entity.Coupon;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/su/coupons")
@Controller
@RooWebScaffold(path = "su/coupons", formBackingObject = Coupon.class)
public class CouponController {
}
