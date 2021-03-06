// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package in.dealo.web.controller;

import in.dealo.entity.ActivityType;
import in.dealo.entity.City;
import in.dealo.entity.Coupon;
import in.dealo.entity.Deal;
import in.dealo.entity.DealCategory;
import in.dealo.entity.DealContent;
import in.dealo.entity.DealDetail;
import in.dealo.entity.DealOrder;
import in.dealo.entity.DealOrderHistory;
import in.dealo.entity.DealStatus;
import in.dealo.entity.MessageTemplate;
import in.dealo.entity.PaymentGateway;
import in.dealo.entity.PaymentGatewayParam;
import in.dealo.entity.PaymentMode;
import in.dealo.entity.PromoCode;
import in.dealo.entity.PromoCodeType;
import in.dealo.entity.Subscriber;
import in.dealo.entity.Usr;
import in.dealo.entity.Vendor;
import in.dealo.entity.Webcontactform;
import in.dealo.svc.ActivityTypeSvc;
import in.dealo.svc.CitySvc;
import in.dealo.svc.CouponSvc;
import in.dealo.svc.DealCategorySvc;
import in.dealo.svc.DealContentSvc;
import in.dealo.svc.DealDetailSvc;
import in.dealo.svc.DealOrderHistorySvc;
import in.dealo.svc.DealOrderSvc;
import in.dealo.svc.DealStatusSvc;
import in.dealo.svc.DealSvc;
import in.dealo.svc.MessageTemplateSvc;
import in.dealo.svc.PaymentGatewayParamSvc;
import in.dealo.svc.PaymentGatewaySvc;
import in.dealo.svc.PaymentModeSvc;
import in.dealo.svc.PromoCodeSvc;
import in.dealo.svc.PromoCodeTypeSvc;
import in.dealo.svc.SubscriberSvc;
import in.dealo.svc.UsrSvc;
import in.dealo.svc.VendorSvc;
import in.dealo.svc.WebcontactformSvc;
import in.dealo.web.controller.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    @Autowired
    ActivityTypeSvc ApplicationConversionServiceFactoryBean.activityTypeSvc;
    
    @Autowired
    CitySvc ApplicationConversionServiceFactoryBean.citySvc;
    
    @Autowired
    CouponSvc ApplicationConversionServiceFactoryBean.couponSvc;
    
    @Autowired
    DealSvc ApplicationConversionServiceFactoryBean.dealSvc;
    
    @Autowired
    DealCategorySvc ApplicationConversionServiceFactoryBean.dealCategorySvc;
    
    @Autowired
    DealContentSvc ApplicationConversionServiceFactoryBean.dealContentSvc;
    
    @Autowired
    DealDetailSvc ApplicationConversionServiceFactoryBean.dealDetailSvc;
    
    @Autowired
    DealOrderSvc ApplicationConversionServiceFactoryBean.dealOrderSvc;
    
    @Autowired
    DealOrderHistorySvc ApplicationConversionServiceFactoryBean.dealOrderHistorySvc;
    
    @Autowired
    DealStatusSvc ApplicationConversionServiceFactoryBean.dealStatusSvc;
    
    @Autowired
    MessageTemplateSvc ApplicationConversionServiceFactoryBean.messageTemplateSvc;
    
    @Autowired
    PaymentGatewaySvc ApplicationConversionServiceFactoryBean.paymentGatewaySvc;
    
    @Autowired
    PaymentGatewayParamSvc ApplicationConversionServiceFactoryBean.paymentGatewayParamSvc;
    
    @Autowired
    PaymentModeSvc ApplicationConversionServiceFactoryBean.paymentModeSvc;
    
    @Autowired
    PromoCodeSvc ApplicationConversionServiceFactoryBean.promoCodeSvc;
    
    @Autowired
    PromoCodeTypeSvc ApplicationConversionServiceFactoryBean.promoCodeTypeSvc;
    
    @Autowired
    SubscriberSvc ApplicationConversionServiceFactoryBean.subscriberSvc;
    
    @Autowired
    UsrSvc ApplicationConversionServiceFactoryBean.usrSvc;
    
    @Autowired
    VendorSvc ApplicationConversionServiceFactoryBean.vendorSvc;
    
    @Autowired
    WebcontactformSvc ApplicationConversionServiceFactoryBean.webcontactformSvc;
    
    public Converter<ActivityType, String> ApplicationConversionServiceFactoryBean.getActivityTypeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.ActivityType, java.lang.String>() {
            public String convert(ActivityType activityType) {
                return new StringBuilder().append(activityType.getName()).append(" ").append(activityType.getCode()).toString();
            }
        };
    }
    
    public Converter<Integer, ActivityType> ApplicationConversionServiceFactoryBean.getIdToActivityTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.ActivityType>() {
            public in.dealo.entity.ActivityType convert(java.lang.Integer id) {
                return activityTypeSvc.findActivityType(id);
            }
        };
    }
    
    public Converter<String, ActivityType> ApplicationConversionServiceFactoryBean.getStringToActivityTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.ActivityType>() {
            public in.dealo.entity.ActivityType convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), ActivityType.class);
            }
        };
    }
    
    public Converter<City, String> ApplicationConversionServiceFactoryBean.getCityToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.City, java.lang.String>() {
            public String convert(City city) {
                return new StringBuilder().append(city.getName()).append(" ").append(city.getPriority()).append(" ").append(city.getCreated()).append(" ").append(city.getModified()).toString();
            }
        };
    }
    
    public Converter<Integer, City> ApplicationConversionServiceFactoryBean.getIdToCityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.City>() {
            public in.dealo.entity.City convert(java.lang.Integer id) {
                return citySvc.findCity(id);
            }
        };
    }
    
    public Converter<String, City> ApplicationConversionServiceFactoryBean.getStringToCityConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.City>() {
            public in.dealo.entity.City convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), City.class);
            }
        };
    }
    
    public Converter<Coupon, String> ApplicationConversionServiceFactoryBean.getCouponToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.Coupon, java.lang.String>() {
            public String convert(Coupon coupon) {
                return new StringBuilder().append(coupon.getCode()).append(" ").append(coupon.getCreated()).append(" ").append(coupon.getModified()).toString();
            }
        };
    }
    
    public Converter<Integer, Coupon> ApplicationConversionServiceFactoryBean.getIdToCouponConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.Coupon>() {
            public in.dealo.entity.Coupon convert(java.lang.Integer id) {
                return couponSvc.findCoupon(id);
            }
        };
    }
    
    public Converter<String, Coupon> ApplicationConversionServiceFactoryBean.getStringToCouponConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.Coupon>() {
            public in.dealo.entity.Coupon convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Coupon.class);
            }
        };
    }
    
    public Converter<Deal, String> ApplicationConversionServiceFactoryBean.getDealToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.Deal, java.lang.String>() {
            public String convert(Deal deal) {
                return new StringBuilder().append(deal.getPriority()).append(" ").append(deal.getTitle()).append(" ").append(deal.getDescription()).append(" ").append(deal.getMarketPrice()).toString();
            }
        };
    }
    
    public Converter<Integer, Deal> ApplicationConversionServiceFactoryBean.getIdToDealConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.Deal>() {
            public in.dealo.entity.Deal convert(java.lang.Integer id) {
                return dealSvc.findDeal(id);
            }
        };
    }
    
    public Converter<String, Deal> ApplicationConversionServiceFactoryBean.getStringToDealConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.Deal>() {
            public in.dealo.entity.Deal convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Deal.class);
            }
        };
    }
    
    public Converter<DealCategory, String> ApplicationConversionServiceFactoryBean.getDealCategoryToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.DealCategory, java.lang.String>() {
            public String convert(DealCategory dealCategory) {
                return new StringBuilder().append(dealCategory.getName()).append(" ").append(dealCategory.getCreated()).append(" ").append(dealCategory.getModified()).toString();
            }
        };
    }
    
    public Converter<Integer, DealCategory> ApplicationConversionServiceFactoryBean.getIdToDealCategoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.DealCategory>() {
            public in.dealo.entity.DealCategory convert(java.lang.Integer id) {
                return dealCategorySvc.findDealCategory(id);
            }
        };
    }
    
    public Converter<String, DealCategory> ApplicationConversionServiceFactoryBean.getStringToDealCategoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.DealCategory>() {
            public in.dealo.entity.DealCategory convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), DealCategory.class);
            }
        };
    }
    
    public Converter<DealContent, String> ApplicationConversionServiceFactoryBean.getDealContentToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.DealContent, java.lang.String>() {
            public String convert(DealContent dealContent) {
                return new StringBuilder().append(dealContent.getContentType()).append(" ").append(dealContent.getContentPath()).append(" ").append(dealContent.getContent()).append(" ").append(dealContent.getCreated()).toString();
            }
        };
    }
    
    public Converter<Integer, DealContent> ApplicationConversionServiceFactoryBean.getIdToDealContentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.DealContent>() {
            public in.dealo.entity.DealContent convert(java.lang.Integer id) {
                return dealContentSvc.findDealContent(id);
            }
        };
    }
    
    public Converter<String, DealContent> ApplicationConversionServiceFactoryBean.getStringToDealContentConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.DealContent>() {
            public in.dealo.entity.DealContent convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), DealContent.class);
            }
        };
    }
    
    public Converter<DealDetail, String> ApplicationConversionServiceFactoryBean.getDealDetailToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.DealDetail, java.lang.String>() {
            public String convert(DealDetail dealDetail) {
                return new StringBuilder().append(dealDetail.getMetaTags()).append(" ").append(dealDetail.getPageTitle()).append(" ").append(dealDetail.getSubtitle()).append(" ").append(dealDetail.getDiscountText()).toString();
            }
        };
    }
    
    public Converter<Integer, DealDetail> ApplicationConversionServiceFactoryBean.getIdToDealDetailConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.DealDetail>() {
            public in.dealo.entity.DealDetail convert(java.lang.Integer id) {
                return dealDetailSvc.findDealDetail(id);
            }
        };
    }
    
    public Converter<String, DealDetail> ApplicationConversionServiceFactoryBean.getStringToDealDetailConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.DealDetail>() {
            public in.dealo.entity.DealDetail convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), DealDetail.class);
            }
        };
    }
    
    public Converter<DealOrder, String> ApplicationConversionServiceFactoryBean.getDealOrderToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.DealOrder, java.lang.String>() {
            public String convert(DealOrder dealOrder) {
                return new StringBuilder().append(dealOrder.getMobile()).append(" ").append(dealOrder.getEmail()).append(" ").append(dealOrder.getCode()).append(" ").append(dealOrder.getPaymentTxnId()).toString();
            }
        };
    }
    
    public Converter<Integer, DealOrder> ApplicationConversionServiceFactoryBean.getIdToDealOrderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.DealOrder>() {
            public in.dealo.entity.DealOrder convert(java.lang.Integer id) {
                return dealOrderSvc.findDealOrder(id);
            }
        };
    }
    
    public Converter<String, DealOrder> ApplicationConversionServiceFactoryBean.getStringToDealOrderConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.DealOrder>() {
            public in.dealo.entity.DealOrder convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), DealOrder.class);
            }
        };
    }
    
    public Converter<DealOrderHistory, String> ApplicationConversionServiceFactoryBean.getDealOrderHistoryToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.DealOrderHistory, java.lang.String>() {
            public String convert(DealOrderHistory dealOrderHistory) {
                return new StringBuilder().append(dealOrderHistory.getAttributes()).append(" ").append(dealOrderHistory.getCreated()).append(" ").append(dealOrderHistory.getModified()).toString();
            }
        };
    }
    
    public Converter<Integer, DealOrderHistory> ApplicationConversionServiceFactoryBean.getIdToDealOrderHistoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.DealOrderHistory>() {
            public in.dealo.entity.DealOrderHistory convert(java.lang.Integer id) {
                return dealOrderHistorySvc.findDealOrderHistory(id);
            }
        };
    }
    
    public Converter<String, DealOrderHistory> ApplicationConversionServiceFactoryBean.getStringToDealOrderHistoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.DealOrderHistory>() {
            public in.dealo.entity.DealOrderHistory convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), DealOrderHistory.class);
            }
        };
    }
    
    public Converter<DealStatus, String> ApplicationConversionServiceFactoryBean.getDealStatusToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.DealStatus, java.lang.String>() {
            public String convert(DealStatus dealStatus) {
                return new StringBuilder().append(dealStatus.getName()).toString();
            }
        };
    }
    
    public Converter<Integer, DealStatus> ApplicationConversionServiceFactoryBean.getIdToDealStatusConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.DealStatus>() {
            public in.dealo.entity.DealStatus convert(java.lang.Integer id) {
                return dealStatusSvc.findDealStatus(id);
            }
        };
    }
    
    public Converter<String, DealStatus> ApplicationConversionServiceFactoryBean.getStringToDealStatusConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.DealStatus>() {
            public in.dealo.entity.DealStatus convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), DealStatus.class);
            }
        };
    }
    
    public Converter<MessageTemplate, String> ApplicationConversionServiceFactoryBean.getMessageTemplateToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.MessageTemplate, java.lang.String>() {
            public String convert(MessageTemplate messageTemplate) {
                return new StringBuilder().append(messageTemplate.getName()).append(" ").append(messageTemplate.getSubjectTemplate()).append(" ").append(messageTemplate.getBodyTemplate()).append(" ").append(messageTemplate.getCreated()).toString();
            }
        };
    }
    
    public Converter<Integer, MessageTemplate> ApplicationConversionServiceFactoryBean.getIdToMessageTemplateConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.MessageTemplate>() {
            public in.dealo.entity.MessageTemplate convert(java.lang.Integer id) {
                return messageTemplateSvc.findMessageTemplate(id);
            }
        };
    }
    
    public Converter<String, MessageTemplate> ApplicationConversionServiceFactoryBean.getStringToMessageTemplateConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.MessageTemplate>() {
            public in.dealo.entity.MessageTemplate convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), MessageTemplate.class);
            }
        };
    }
    
    public Converter<PaymentGateway, String> ApplicationConversionServiceFactoryBean.getPaymentGatewayToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.PaymentGateway, java.lang.String>() {
            public String convert(PaymentGateway paymentGateway) {
                return new StringBuilder().append(paymentGateway.getName()).append(" ").append(paymentGateway.getClazz()).append(" ").append(paymentGateway.getIdentificationCode()).append(" ").append(paymentGateway.getSecretKey()).toString();
            }
        };
    }
    
    public Converter<Integer, PaymentGateway> ApplicationConversionServiceFactoryBean.getIdToPaymentGatewayConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.PaymentGateway>() {
            public in.dealo.entity.PaymentGateway convert(java.lang.Integer id) {
                return paymentGatewaySvc.findPaymentGateway(id);
            }
        };
    }
    
    public Converter<String, PaymentGateway> ApplicationConversionServiceFactoryBean.getStringToPaymentGatewayConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.PaymentGateway>() {
            public in.dealo.entity.PaymentGateway convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), PaymentGateway.class);
            }
        };
    }
    
    public Converter<PaymentGatewayParam, String> ApplicationConversionServiceFactoryBean.getPaymentGatewayParamToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.PaymentGatewayParam, java.lang.String>() {
            public String convert(PaymentGatewayParam paymentGatewayParam) {
                return new StringBuilder().append(paymentGatewayParam.getClazz()).append(" ").append(paymentGatewayParam.getFieldName()).append(" ").append(paymentGatewayParam.getPgfieldName()).append(" ").append(paymentGatewayParam.getFieldDesc()).toString();
            }
        };
    }
    
    public Converter<Integer, PaymentGatewayParam> ApplicationConversionServiceFactoryBean.getIdToPaymentGatewayParamConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.PaymentGatewayParam>() {
            public in.dealo.entity.PaymentGatewayParam convert(java.lang.Integer id) {
                return paymentGatewayParamSvc.findPaymentGatewayParam(id);
            }
        };
    }
    
    public Converter<String, PaymentGatewayParam> ApplicationConversionServiceFactoryBean.getStringToPaymentGatewayParamConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.PaymentGatewayParam>() {
            public in.dealo.entity.PaymentGatewayParam convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), PaymentGatewayParam.class);
            }
        };
    }
    
    public Converter<PaymentMode, String> ApplicationConversionServiceFactoryBean.getPaymentModeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.PaymentMode, java.lang.String>() {
            public String convert(PaymentMode paymentMode) {
                return new StringBuilder().append(paymentMode.getName()).append(" ").append(paymentMode.getCreated()).append(" ").append(paymentMode.getModified()).toString();
            }
        };
    }
    
    public Converter<Integer, PaymentMode> ApplicationConversionServiceFactoryBean.getIdToPaymentModeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.PaymentMode>() {
            public in.dealo.entity.PaymentMode convert(java.lang.Integer id) {
                return paymentModeSvc.findPaymentMode(id);
            }
        };
    }
    
    public Converter<String, PaymentMode> ApplicationConversionServiceFactoryBean.getStringToPaymentModeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.PaymentMode>() {
            public in.dealo.entity.PaymentMode convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), PaymentMode.class);
            }
        };
    }
    
    public Converter<PromoCode, String> ApplicationConversionServiceFactoryBean.getPromoCodeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.PromoCode, java.lang.String>() {
            public String convert(PromoCode promoCode) {
                return new StringBuilder().append(promoCode.getCode()).append(" ").append(promoCode.getEmail()).append(" ").append(promoCode.getMobile()).append(" ").append(promoCode.getExpDate()).toString();
            }
        };
    }
    
    public Converter<Integer, PromoCode> ApplicationConversionServiceFactoryBean.getIdToPromoCodeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.PromoCode>() {
            public in.dealo.entity.PromoCode convert(java.lang.Integer id) {
                return promoCodeSvc.findPromoCode(id);
            }
        };
    }
    
    public Converter<String, PromoCode> ApplicationConversionServiceFactoryBean.getStringToPromoCodeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.PromoCode>() {
            public in.dealo.entity.PromoCode convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), PromoCode.class);
            }
        };
    }
    
    public Converter<PromoCodeType, String> ApplicationConversionServiceFactoryBean.getPromoCodeTypeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.PromoCodeType, java.lang.String>() {
            public String convert(PromoCodeType promoCodeType) {
                return new StringBuilder().append(promoCodeType.getName()).append(" ").append(promoCodeType.getExpressionText()).append(" ").append(promoCodeType.getCreated()).append(" ").append(promoCodeType.getModified()).toString();
            }
        };
    }
    
    public Converter<Integer, PromoCodeType> ApplicationConversionServiceFactoryBean.getIdToPromoCodeTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.PromoCodeType>() {
            public in.dealo.entity.PromoCodeType convert(java.lang.Integer id) {
                return promoCodeTypeSvc.findPromoCodeType(id);
            }
        };
    }
    
    public Converter<String, PromoCodeType> ApplicationConversionServiceFactoryBean.getStringToPromoCodeTypeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.PromoCodeType>() {
            public in.dealo.entity.PromoCodeType convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), PromoCodeType.class);
            }
        };
    }
    
    public Converter<Subscriber, String> ApplicationConversionServiceFactoryBean.getSubscriberToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.Subscriber, java.lang.String>() {
            public String convert(Subscriber subscriber) {
                return new StringBuilder().append(subscriber.getEmailmobile()).append(" ").append(subscriber.getCreated()).append(" ").append(subscriber.getModified()).toString();
            }
        };
    }
    
    public Converter<Integer, Subscriber> ApplicationConversionServiceFactoryBean.getIdToSubscriberConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.Subscriber>() {
            public in.dealo.entity.Subscriber convert(java.lang.Integer id) {
                return subscriberSvc.findSubscriber(id);
            }
        };
    }
    
    public Converter<String, Subscriber> ApplicationConversionServiceFactoryBean.getStringToSubscriberConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.Subscriber>() {
            public in.dealo.entity.Subscriber convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Subscriber.class);
            }
        };
    }
    
    public Converter<Usr, String> ApplicationConversionServiceFactoryBean.getUsrToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.Usr, java.lang.String>() {
            public String convert(Usr usr) {
                return new StringBuilder().append(usr.getEmail()).append(" ").append(usr.getPassword()).append(" ").append(usr.getDisplayName()).append(" ").append(usr.getFirstName()).toString();
            }
        };
    }
    
    public Converter<Integer, Usr> ApplicationConversionServiceFactoryBean.getIdToUsrConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.Usr>() {
            public in.dealo.entity.Usr convert(java.lang.Integer id) {
                return usrSvc.findUsr(id);
            }
        };
    }
    
    public Converter<String, Usr> ApplicationConversionServiceFactoryBean.getStringToUsrConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.Usr>() {
            public in.dealo.entity.Usr convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Usr.class);
            }
        };
    }
    
    public Converter<Vendor, String> ApplicationConversionServiceFactoryBean.getVendorToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.Vendor, java.lang.String>() {
            public String convert(Vendor vendor) {
                return new StringBuilder().append(vendor.getName()).append(" ").append(vendor.getDescription()).append(" ").append(vendor.getWebsite()).append(" ").append(vendor.getCreated()).toString();
            }
        };
    }
    
    public Converter<Integer, Vendor> ApplicationConversionServiceFactoryBean.getIdToVendorConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.Vendor>() {
            public in.dealo.entity.Vendor convert(java.lang.Integer id) {
                return vendorSvc.findVendor(id);
            }
        };
    }
    
    public Converter<String, Vendor> ApplicationConversionServiceFactoryBean.getStringToVendorConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.Vendor>() {
            public in.dealo.entity.Vendor convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Vendor.class);
            }
        };
    }
    
    public Converter<Webcontactform, String> ApplicationConversionServiceFactoryBean.getWebcontactformToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<in.dealo.entity.Webcontactform, java.lang.String>() {
            public String convert(Webcontactform webcontactform) {
                return new StringBuilder().append(webcontactform.getName()).append(" ").append(webcontactform.getEmail()).append(" ").append(webcontactform.getMobile()).append(" ").append(webcontactform.getOrderCode()).toString();
            }
        };
    }
    
    public Converter<Integer, Webcontactform> ApplicationConversionServiceFactoryBean.getIdToWebcontactformConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, in.dealo.entity.Webcontactform>() {
            public in.dealo.entity.Webcontactform convert(java.lang.Integer id) {
                return webcontactformSvc.findWebcontactform(id);
            }
        };
    }
    
    public Converter<String, Webcontactform> ApplicationConversionServiceFactoryBean.getStringToWebcontactformConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, in.dealo.entity.Webcontactform>() {
            public in.dealo.entity.Webcontactform convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Webcontactform.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getActivityTypeToStringConverter());
        registry.addConverter(getIdToActivityTypeConverter());
        registry.addConverter(getStringToActivityTypeConverter());
        registry.addConverter(getCityToStringConverter());
        registry.addConverter(getIdToCityConverter());
        registry.addConverter(getStringToCityConverter());
        registry.addConverter(getCouponToStringConverter());
        registry.addConverter(getIdToCouponConverter());
        registry.addConverter(getStringToCouponConverter());
        registry.addConverter(getDealToStringConverter());
        registry.addConverter(getIdToDealConverter());
        registry.addConverter(getStringToDealConverter());
        registry.addConverter(getDealCategoryToStringConverter());
        registry.addConverter(getIdToDealCategoryConverter());
        registry.addConverter(getStringToDealCategoryConverter());
        registry.addConverter(getDealContentToStringConverter());
        registry.addConverter(getIdToDealContentConverter());
        registry.addConverter(getStringToDealContentConverter());
        registry.addConverter(getDealDetailToStringConverter());
        registry.addConverter(getIdToDealDetailConverter());
        registry.addConverter(getStringToDealDetailConverter());
        registry.addConverter(getDealOrderToStringConverter());
        registry.addConverter(getIdToDealOrderConverter());
        registry.addConverter(getStringToDealOrderConverter());
        registry.addConverter(getDealOrderHistoryToStringConverter());
        registry.addConverter(getIdToDealOrderHistoryConverter());
        registry.addConverter(getStringToDealOrderHistoryConverter());
        registry.addConverter(getDealStatusToStringConverter());
        registry.addConverter(getIdToDealStatusConverter());
        registry.addConverter(getStringToDealStatusConverter());
        registry.addConverter(getMessageTemplateToStringConverter());
        registry.addConverter(getIdToMessageTemplateConverter());
        registry.addConverter(getStringToMessageTemplateConverter());
        registry.addConverter(getPaymentGatewayToStringConverter());
        registry.addConverter(getIdToPaymentGatewayConverter());
        registry.addConverter(getStringToPaymentGatewayConverter());
        registry.addConverter(getPaymentGatewayParamToStringConverter());
        registry.addConverter(getIdToPaymentGatewayParamConverter());
        registry.addConverter(getStringToPaymentGatewayParamConverter());
        registry.addConverter(getPaymentModeToStringConverter());
        registry.addConverter(getIdToPaymentModeConverter());
        registry.addConverter(getStringToPaymentModeConverter());
        registry.addConverter(getPromoCodeToStringConverter());
        registry.addConverter(getIdToPromoCodeConverter());
        registry.addConverter(getStringToPromoCodeConverter());
        registry.addConverter(getPromoCodeTypeToStringConverter());
        registry.addConverter(getIdToPromoCodeTypeConverter());
        registry.addConverter(getStringToPromoCodeTypeConverter());
        registry.addConverter(getSubscriberToStringConverter());
        registry.addConverter(getIdToSubscriberConverter());
        registry.addConverter(getStringToSubscriberConverter());
        registry.addConverter(getUsrToStringConverter());
        registry.addConverter(getIdToUsrConverter());
        registry.addConverter(getStringToUsrConverter());
        registry.addConverter(getVendorToStringConverter());
        registry.addConverter(getIdToVendorConverter());
        registry.addConverter(getStringToVendorConverter());
        registry.addConverter(getWebcontactformToStringConverter());
        registry.addConverter(getIdToWebcontactformConverter());
        registry.addConverter(getStringToWebcontactformConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
