<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="main">
       <div class="container_12">
           <div class="wrapper img-indent-bot" style="text-align:center; align:center;">
               <c:if test="${dealOrder.status == 1 || dealOrder.status == 5}">
	               <h2>Your transaction is successful</h2><br/>
	               <h4>Thanks for your purchase of ${deal.title }</h4> <br/><br/>
	                <h3>Your order number is: ${dealOrder.code}</h3>
	                <c:if test="${dealOrder.status == 1}"><br/><br/>
	                <p><strong style="color:red">NOTE that your order is not complete yet. Order would be complete when we receive 
	                payment for the order.</strong>
	                </p>
	                </c:if>
                </c:if>
                <c:if test="${dealOrder.status >0 && dealOrder.status != 1 && dealOrder.status != 5}">
                <h2>Your Transaction ${dealOrder} failed. Please <a href="${approot}contact">contact us</a> if problem with your order persists.</h2><br/>
                </c:if>
                <c:if test="${dealOrder.status ==0}">
                <h2>Your Transaction failed. Please <a href="${approot}contact">contact us</a> if problem persists.</h2><br/>
                </c:if>
           </div>
          
   </div>