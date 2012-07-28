<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<ul class="tabs">
                <li><a href="#tab1">The Deal</a></li>
                <li><a href="#tab2">Highlights</a></li>
                <li><a href="#tab3">Location</a></li>
            </ul>
            <div class="tab_container">
                <div id="tab1" class="tab_content">
                    <div class="main">
                    	<div class="wrapper">
                        	<figure class="img-indent-r"><img src="${staticpath}/${deal.dealDetail.image1}" alt="" style="float: right;"></figure>
                            <div class="extra-wrap">
                            	<div class="indentREMOVED">
                                    <strong class="title">${deal.title}</strong>
                                    <p>${deal.description}</p>
									<p>${deal.dealDetail.subtitle}<br/>
									<span style="text-transform:none; font-size:10px">
									<c:if test="${ deal.couponsSold < deal.minCouponsRequired}">
									<b><span style="font-size:11px" id="dealCount">...</span></b>
									<script>
										$.ajax({
										  url: '${approot}getdealsoldcount/${deal.pageUrl}',
										  success: function(data) {
										    $('#dealCount').html(data);
										  }
										});
									</script>
									</c:if>
									<c:if test="${deal.couponsSold >= deal.minCouponsRequired}">
									Deal is <strong>LIVE</strong>
									</c:if>
									<a href="#"><b>&nbsp;?&nbsp;</b></a>
									</span>
									</p>
									<table width="80%" style="margin-left:12%;color:red;background:white;">
									<tr><td style="border-style:solid;border-color:red;border-width:2px;padding:2px;text-decoration:line-through;">Market: ${deal.marketPrice}</td><td style="border-style:solid;border-color:red;border-width:2px;padding:2px">${deal.dealDetail.discountText}</td></tr>
									<tr><td colspan="2" align="center" style="border-style:solid;border-color:red;border-width:2px;padding:2px">Deal: <strong style="font-size:130%;">Rs ${deal.dealPrice} ${deal.priceUnit}</strong></td></tr>
									</table><br/>
                                    <div class="btn-wrap">
										<strong style="color:white">Pay Rs ${deal.sellingPrice} to book this deal</strong>
                                        <span class="button">
                                        <c:choose>
                                        	<c:when test="${deal.couponsSold < deal.totalCoupons}">
                                            	<a href="${approot}checkout/${deal.pageUrl}"><strong>Book Now</strong></a>
                                            </c:when>
                                            <c:otherwise>
                                            	<a><strong>Sold Out</strong></a>
                                            </c:otherwise>
                                        </c:choose>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="tab2" class="tab_content">
                	<div class="main">
                    	<div class="wrapper">
                        	<figure class="img-indent-r"><img src="${staticpath}/${deal.dealDetail.image2}" alt="" style="float: right;"></figure>
                            <div class="extra-wrap">
                            	<div class="indentR">
                                    ${deal.dealDetail.highlights}
                                    <div class="btn-wrap">
                                        <span class="button">
                                            <c:choose>
	                                        	<c:when test="${deal.couponsSold < deal.totalCoupons}">
	                                            	<a href="${approot}checkout/${deal.pageUrl}"><strong>Book Now</strong></a>
	                                            </c:when>
	                                            <c:otherwise>
	                                            	<a><strong>Sold Out</strong></a>
	                                            </c:otherwise>
	                                        </c:choose>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="tab3" class="tab_content">
                	<div class="main">
                    	<div class="wrapper">
                        	<figure class="img-indent-r"><img src="${staticpath}/${deal.dealDetail.image3}" alt="" style="float: right;"></figure>
                            <div class="extra-wrap">
                            	<div class="indentR">
                                    <strong class="title">${deal.dealDetail.location}</strong>
                                    ${deal.dealDetail.locationHighlights}
                                    <div class="btn-wrap">
                                        <span class="button">
                                            <c:choose>
	                                        	<c:when test="${deal.couponsSold < deal.totalCoupons}">
	                                            	<a href="${approot}checkout/${deal.pageUrl}"><strong>Book Now</strong></a>
	                                            </c:when>
	                                            <c:otherwise>
	                                            	<a><strong>Sold Out</strong></a>
	                                            </c:otherwise>
	                                        </c:choose>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
				<div>
				<div class="main">
                    <div class="wrapper" style="color:white">
						<div style="width:50%;float:left;height:180px;overflow:hidden;">
						<p><strong>About The Deal</strong><br/>
						${deal.dealDetail.aboutDeal}<br/>
						${deal.dealDetail.fineprints}
						</p>
						</div>
						<div style="width:50%;float:right;height:180px;overflow:hidden;">
						<p><strong>About The Project</strong><br/>
						${deal.dealDetail.aboutProject}
						</p>
						</div>
						<div style="width:100%;text-align:center;margin-top:8px;">
						<hr/>
						${deal.dealDetail.aboutSupplier}
						</div>
					</div>
				</div>
				</div>
            </div>