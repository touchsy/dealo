<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="menu-row">
				<div style="float:left;background:url('${staticpath}/images/bg-tail.gif');width:192px;align:center;text-align:center;"><a href="${approot}"><img width="144px" src="${staticpath}/images/tlogo.png"/></a></div>
                <div class="main">
                    <nav>
                        <ul class="menu wrapper">
                            <li><a  style="font-size:120%;">&nbsp;</a></li>
                            <li><a>City&nbsp;&nbsp;
                            	<select style="width:130px" onchange="window.location.href='${approot}changecity-' + this.value;">
                            	<c:forEach items="${cities}" var="city">
                            		<option value="${city.url}" ${cityURL} <c:if test="${city.url == cityURL }">selected="true"</c:if> >${city.name}</option>
                            	</c:forEach>
                            	</select>
                            </a></li>
                            <li class="wide" ><form id="signup-form" method="post" action="${approot}subscribe">
												
												<fieldset>	
													<span class="search-field">
														<input name="val" type="text" value="Subscribe email" onBlur="if(this.value=='') this.value='Subscribe email'" onFocus="if(this.value =='Subscribe email' ) this.value=''" />
														<a class="search-button" href="#" onClick="document.getElementById('signup-form').submit()"></a>	
													</span>						
												</fieldset>
											</form></li>
                            
                            <li><a href="${approot}howitworks">How It Works</a></li>
                            <li><a href="${approot}contact">Contact</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="main">
                <div class="wrapper p3" style="align:center;text-align:center;"><c:if test="${message != '' }"><span style="color:green">${message}</span><br/></c:if><span style="font-size:180%;">One Super Deal Every Week</span>
                </div>
            </div>