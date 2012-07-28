<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div style="width: 80%; margin-left: auto; margin-right: auto; margin-top: 0px;" id="myDiv">
			<form:form action="" commandName="vendor" class="well" style="height:400px;">
				<div class="span6"><form:label path="">First Name *</form:label><form:input path="usr.firstName" id="firstName"/></div>
				<div ><form:label path="">Middle Name</form:label><form:input path="usr.middleName" id="middleName"/></div>
				<div class="span6"><form:label path="">Last Name *</form:label><form:input path="usr.lastName" id="lastName"/></div>
				<div><form:label path="">Display Name *</form:label><form:input path="name" id="name"/></div>
				<div class="span6"><form:label path="">Gender</form:label>
				<form:select path="usr.gender">
				<form:option value="m">male</form:option>
				<form:option value="f">female</form:option>
				</form:select>
				</div>
				<div><form:label path="">Email Id *</form:label><form:input path="usr.email" id="email"/></div>
				<div class="span6"><form:label path="">Password *</form:label><form:password path="usr.password" id="email"/></div>
				<div><form:label path="">Confirm PassWord *</form:label><form:password path="" id="email"/></div>
				<div class="span6"><form:label path="">Mobile</form:label><form:input path="usr.mobile" id="mobile"/></div>
				<div><form:label path="">Website</form:label><form:input path="website" id="website"/></div>
				<div class="span6"><form:label path="">Description</form:label><form:input path="description" id="description"/></div>
				<div><form:label path="">Enabled</form:label><form:checkbox path="usr.enabled" id="enabled"/></div>
				<div class="span7"><form:button name="submit">Save</form:button></div>
				<div class="span5"><p style="color:red;">* Fields Are Required</p></div>
				<%-- <div><form:input path="modified" value="${dt}"/></div> --%>
			 </form:form>
			 
</div>
