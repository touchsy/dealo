<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

            <div class="main">
                <div class="container_12">
                    <div class="wrapper">
                    	<article class="grid_8">	
                        	<h3>Checkout - ${deal.title}</h3>
                            <form:form id="contact-form" method="post" commandName="dealOrder">                    
                                <form:input type="hidden" path="quantity"/>
                                <fieldset>
                                	  <label><span class="text-form">Amount:</span><form:input type="hidden" path="totalAmount"/><form:input type="hidden" path="paidAmount"/><h3>Rs. ${dealOrder.paidAmount}</h3></label>
                                	  <label><span class="text-form">Payment Mode:</span><form:select path="paymentMode" items="${paymentModes}" itemLabel="name" itemValue="id"/></label>
                                      <label><span class="text-form">Mobile:</span><span class="border"><form:input type="text" path="mobile" maxlength="14"/></span></label>
                                      <label><span class="text-form">Email:</span><span class="border"><form:input type="text" path="email" maxlength="48"/></span></label>                              
                                      <label><span class="text-form">Address Line1:</span><span class="border"><form:input type="text" path="address1" maxlength="128"/></span></label>
                                      <label><span class="text-form">Address Line2:</span><span class="border"><form:input type="text" path="address2" maxlength="128"/></span></label>
                                      <label><span class="text-form">City:</span><span class="border"><form:input type="text" path="city" maxlength="40"/></span></label>
                                      <label><span class="text-form">PIN Code:</span><span class="border"><form:input type="text" path="postalCode" maxlength="6"/></span></label>
                                      <div class="wrapper">
                                        <div class="extra-wrap">
                                            <div class="clear"></div>
                                            <div class="buttons">                                                
                                                <a class="button-2" href="#" onClick="document.getElementById('contact-form').submit()">Checkout</a>
                                                <a class="button-2" href="#" onClick="document.getElementById('contact-form').reset()">Reset</a>
                                            </div> 
                                        </div>
                                      </div>                            
                                </fieldset>						
                            </form:form>
                        </article>
                    </div>
                </div>
            </div>
        