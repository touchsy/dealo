<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
    $(document).ready(function() {
        $("#input1").cleditor()[0].focus();
        $("#input2").cleditor()[0].focus();
        $("#input3").cleditor()[0].focus();
        $("#input4").cleditor()[0].focus();
        $("#datepicker1").datepicker();
        $("#datepicker2").datepicker();
        $("#datepicker3").datepicker();
       
      });
    </script>
    <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-18352523-1']);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script>
 <script>
function validateForm() {
	
	var title=$("#title").val();
	var subtitle=$("#subtitle").val();
	var description=$("#description").val();
	var state=$("#state").val();
	var datepicker1 = $("#datepicker1").val();
	var datepicker2 = $("#datepicker2").val();
	var datepicker3 = $("#datepicker3").val();
	var pageTitle = $("#pageTitle").val();
	var discountText = $("#discountText").val();
	var priceUnit= $("#priceUnit").val();
	var image1 = $("#image1").val();
	var image2 = $("#image2").val();
	var image3 = $("#image3").val();
	var marketPrice= $("#marketPrice").val();
	var sellingPrice= $("#sellingPrice").val();
	var dealPrice= $("#dealPrice").val();
	var minCouponsRequired= $("#minCouponsRequired").val();
	var couponPerPerson= $("#couponPerPerson").val();
	var input1 = $("#input1").val();
	var input2 = $("#input2").val();
	var input3 = $("#input3").val();
	var input4 = $("#input4").val();
	var fineprints = $("#fineprints").val();
	if(title == null || title == "")
		{
		alert("Title is Required.");
		$("#title").focus();
		return false;
		}
	if(subtitle == null || subtitle == "")
	{
	alert("Subtitle is Required");
	$("#subtitle").focus();
	return false;
	}
	if(description == null || description == "")
	{
	alert("Description is Required");
	$("#description").focus();
	return false;
	}
		
	if(marketPrice == null || marketPrice == "" || isNaN(marketPrice))
	{
	alert("Market Price is Required And must a Number");
	$("#marketPrice").focus();
	return false;
	}
	if(sellingPrice == null || sellingPrice == "" || isNaN(sellingPrice))
	{
	alert("Selling Price is Required And must be a Number");
	$("#sellingPrice").focus();
	return false;
	}
	if(dealPrice == null || dealPrice == "" || isNaN(dealPrice))
	{
	alert("Deal Price is Required And Must a Number");
	$("#dealPrice").focus();
	return false;
	}
	
	if (datepicker1 == null || datepicker1 == "") {
		alert("please enter Start Time");
		$("#datepicker1").focus();
		return false;
	}
	if (datepicker2 == null || datepicker2 == "") {
		alert("please enter End Time");
		$("#datepicker2").focus();
		return false;
	}
	if (datepicker3 == null || datepicker3 == "") {
		alert("please enter valid Upto date");
		$("#datepicker3").focus();
		return false;
	}
	if(minCouponsRequired == null || minCouponsRequired == "")
	{
	alert("Minimum Coupons Required is Required");
	$("#minCouponsRequired").focus();
	return false;
	}
	if(couponPerPerson == null || couponPerPerson == "")
	{
	alert("Coupon Per Person is Required");
	$("#couponPerPerson").focus();
	return false;
	}
	
	if(pageTitle == null || pageTitle == "")
	{
	alert("Page title is Required");
	$("#pageTitle").focus();
	return false;
	}
	
	if(discountText == null || discountText == "")
	{
	alert("Discount Text is Required");
	$("#discountText").focus();
	return false;
	}
	if(priceUnit == null || priceUnit == "")
	{
	alert("Price Per Unit is Required");
	$("#priceUnit").focus();
	return false;
	}
	
	if (image1 == null || image1 == "") {
		alert("Image 1 is required");
		$("#image1").focus();
		return false;
	}
	if (image2 == null || image2 == "") {
		alert("Image 2 is required");
		$("#image2").focus();
		return false;
	}
	if (image3 == null || image3 == "") {
		alert("Image 3 is required");
		$("#image3").focus();
		return false;
	}
	
	if (fineprints == null || fineprints == "") {
		alert("Fine Prints is required");
		$("#fineprints").focus();
		return false;
	}
	
	if (input1 == null || input1 == "" || input1 == "<br>") {
		alert("Highlight is required");
		$("#input1").focus();
		return false;
	}
	if (input2 == null || input2 == "" || input1 == "<br>") {
		alert("About Project is required");
		$("#input2").focus();
		return false;
	}
	if (input3 == null || input3 == "" || input1 == "<br>") {
		alert("Location Highlight is required");
		$("#input3").focus();
		return false;
	}
	
	if (input4 == null || input4 == "" || input1 == "<br>") {
		alert("About Deal is required");
		$("#input4").focus();
		return false;
	}
	
}	
	
</script>
<div style="width: 80%; margin-left: auto; margin-right: auto; margin-top: 0px;"
	id="myDiv">
	<p style="color: red;">* Fields Are Required</p>
	<form:form commandName="deal" action="createDeal" method="post" enctype="multipart/form-data"
		style="height: 2600px;" onsubmit="return validateForm();">
		<div class="accordion" id="accordion2">
			<div class="accordion-group">
				<div class="accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordion2" href="#collapseOne"> <span
						class="label label-info">About Deal</span>
					</a>
				</div>
				<div id="collapseOne" class="accordion-body collapse in">
					<div class="accordion-inner">
						<div class="span6">
							<form:label path="">Title *</form:label>
							<form:input path="title" id="title"/>
						</div>
						<div class="span6">
							<form:label path="">Description *</form:label>
							<form:input path="description" id="description"/>
						</div>
						<div class="span6">
							<form:label path="">Sub Title *</form:label>
							<form:input path="dealDetail.subtitle" id="subtitle"/>
						</div>
						<div class="span6">
							<form:label path="">Vendor *</form:label>
							<form:select path="vendor" items="${vendors }" itemValue="id"
								itemLabel="name" />
							<a data-toggle="modal" href="/dealo/su/deals/createVendor"
								class="btn">Add Vendor</a>
						</div>
						<div class="span6">
							<a class="accordion-toggle btn" data-toggle="collapse"
								data-parent="#accordion2" href="#collapseTwo" id="nextOne">Next</a>
						</div>
					</div>
				</div>
			</div>

			<div class="accordion-group">
				<div class="accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordion2" href="#collapseTwo"> <span
						class="label label-info">Date And Prices</span>
					</a>
				</div>
				<div id="collapseTwo" class="accordion-body collapse">
					<div class="accordion-inner">

						<div class="span6">
							<form:label path="">Market Price *</form:label>
							<form:input path="marketPrice" id="marketPrice"/>
						</div>
						<div class="span6">
							<form:label path="">Selling Price *</form:label>
							<form:input path="sellingPrice" id="sellingPrice"/>
						</div>
						<div class="span6">
							<form:label path="">Deal Price *</form:label>
							<form:input path="dealPrice" id="dealPrice"/>
						</div>
						<div class="span6">
							<form:label path="">Start Time *</form:label>
							<form:input path="startTime" id="datepicker1" />
						</div>
						<div class="span6">
							<form:label path="">Valid Upto *</form:label>
							<form:input path="validUpto" id="datepicker3" />
						</div>
						<div class="span6">
							<form:label path="">End Time *</form:label>
							<form:input path="endTime" id="datepicker2" />
						</div>
						<div class="span6">
							<form:label path="">Minimum Coupons Required *</form:label>
							<form:input path="minCouponsRequired" id="minCouponsRequired"/>
						</div>
						<div class="span6">
							<form:label path="">Coupon Per Person *</form:label>
							<form:input path="couponPerPerson" id="couponPerPerson"/>
						</div>
						<div class="span6">
							<a class="accordion-toggle btn" data-toggle="collapse"
								data-parent="#accordion2" href="#collapseOne">Previous</a> <a
								class="accordion-toggle btn" data-toggle="collapse"
								data-parent="#accordion2" href="#collapseThree" id="nextTwo">Next</a>
						</div>
					</div>
				</div>
			</div>

			<div class="accordion-group">
				<div class="accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordion2" href="#collapseThree"> <span
						class="label label-info">Marketing Detail</span>
					</a>
				</div>
				<div id="collapseThree" class="accordion-body collapse">
					<div class="accordion-inner">
						<div class="span6">
							<form:label path="">SMS Text</form:label>
							<form:input path="smsText" />
						</div>
						<div class="span6">
							<form:label path="">SMS Coupon Text</form:label>
							<form:input path="smsCouponText" />
						</div>
						<div class="span6">
							<form:label path="">Facebook Title</form:label>
							<form:input path="facebookTitle" />
						</div>
						<div class="span6">
							<form:label path="">Twitter Title</form:label>
							<form:input path="twitterTitle" />
						</div>
						<div class="span6">
							<form:label path="">Email Subject</form:label>
							<form:input path="emailSubject" />
						</div>
						<div class="span6">
							<form:label path="">Page Url</form:label>
							<form:input path="pageUrl" />
						</div>
						<div class="span6">
							<a class="accordion-toggle btn" data-toggle="collapse"
								data-parent="#accordion2" href="#collapseTwo">Previous</a> <a
								class="accordion-toggle btn" data-toggle="collapse"
								data-parent="#accordion2" href="#collapseFour">Next</a>
						</div>
					</div>
				</div>
			</div>
			<div class="accordion-group">
				<div class="accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordion2" href="#collapseFour"> <span
						class="label label-info">Deal Deatail</span>
					</a>
				</div>
				<div id="collapseFour" class="accordion-body collapse">
					<div class="accordion-inner">
						<div class="span6">
							<form:label path="">About Supplier</form:label>
							<form:input path="dealDetail.aboutSupplier" />
						</div>
						<div class="span6">
							<form:label path="">Location</form:label>
							<form:input path="location" id="location"/>
						</div>
						<div class="span6">
							<form:label path="">Select City</form:label>
							<form:select path="city" items="${cities }" itemLabel="name" itemValue="id"/>
						</div>
						<div class="span6">
							<form:label path="">Page Title *</form:label>
							<form:input path="dealDetail.pageTitle" id="pageTitle"/>
						</div>
						<div class="span6">
							<form:label path="">Meta Tags</form:label>
							<form:input path="dealDetail.metaTags" />
						</div>
						<div class="span6">
							<form:label path="">Discount Text *</form:label>
							<form:input path="dealDetail.discountText" id="discountText"/>
						</div>
						<div class="span6">
							<form:label path="">Priority</form:label>
							<form:select path="priority">
								<form:option value="10"></form:option>
								<form:option value="9"></form:option>
								<form:option value="8"></form:option>
								<form:option value="7"></form:option>
								<form:option value="6"></form:option>
								<form:option value="5"></form:option>
								<form:option value="4"></form:option>
								<form:option value="3"></form:option>
								<form:option value="2"></form:option>
								<form:option value="1"></form:option>
							</form:select>
						</div>
						<div class="span6">
							<form:label path="">Price Per Unit</form:label>
							<form:input path="priceUnit" id="priceUnit"/>
						</div>
						<div class="span6">
							<a class="accordion-toggle btn" data-toggle="collapse"
								data-parent="#accordion2" href="#collapseThree">Previous</a> <a
								class="accordion-toggle btn" data-toggle="collapse"
								data-parent="#accordion2" href="#collapseFive" id="nextThree">Next</a>
						</div>

					</div>
				</div>
			</div>

			<div class="accordion-group">
				<div class="accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordion2" href="#collapseFive"> <span
						class="label label-info">Verifications</span>
					</a>
				</div>
				<div id="collapseFive" class="accordion-body collapse">
					<div class="accordion-inner">
						<div class="span6">
							<form:label path="">Address Required</form:label>
							<form:checkbox path="addrRequired" />
						</div>
						<div class="span6">
							<form:label path="">Email Verification Required</form:label>
							<form:checkbox path="emailVerificationRequired" />
						</div>
						<div class="span6">
							<form:label path="">Mobile Verification Required</form:label>
							<form:checkbox path="mobileVerificationRequired"></form:checkbox>
						</div>
						<div class="span6">
							<form:label path="">Enable </form:label>
							<form:checkbox path="enabled" />
						</div>
						<div class="span6">
							<a class="accordion-toggle btn" data-toggle="collapse"
								data-parent="#accordion2" href="#collapseFour">Previous</a> <a
								class="accordion-toggle btn" data-toggle="collapse"
								data-parent="#accordion2" href="#collapseSix">Next</a>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion2" href="#collapseSix"> <span
							class="label label-info">Images</span>
						</a>
					</div>
					<div id="collapseSix" class="accordion-body collapse">
						<div class="accordion-inner">
							<div class="span6">
								<form:label path="">Image 1 *</form:label>
								<input type="file" name="image1" id="image1"/>
							</div>
							<div class="span6">
								<form:label path="">Image 2 *</form:label>
								<input type="file" name="image2" id="image2"/>
							</div>
							<div class="span6">
								<form:label path="">Image 3 *</form:label>
								<input type="file" name="image3" id="image3"/>
							</div>
							<div class="span6">
								<form:label path="">Image 4</form:label>
								<input type="file" name="image4" />
							</div>
							<div class="span6">
								<form:label path="">Thumbnail</form:label>
								<input type="file" name="thumbnail" />
							</div>
							<div class="span6">
								<a class="accordion-toggle btn" data-toggle="collapse"
									data-parent="#accordion2" href="#collapseFive">Previous</a> <a
									class="accordion-toggle btn" data-toggle="collapse"
									data-parent="#accordion2" href="#collapseSeven" id="nextFour">Next</a>
							</div>
						</div>
					</div>
				</div>
				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion2" href="#collapseSeven"> <span
							class="label label-info">Contents</span>
						</a>
					</div>
					<div id="collapseSeven" class="accordion-body collapse">
						<div class="accordion-inner">
							<div class="span6">
							<form:label path="">Fine Prints *</form:label>
							<form:input path="dealDetail.fineprints" id="fineprints"/>
						    </div>
							<div class="span12" style="display: block;">
								<form:label path="">About Deal *</form:label>
								<form:textarea path="dealDetail.aboutDeal" id="input4" />
							</div>
							
							<div class="span12" style="display: block;">
								<form:label path="">Highlights *</form:label>
								<form:textarea path="dealDetail.highlights" id="input1" />
							</div>
							<div class="span12" style="display: block;">
								<form:label path="">About Project *</form:label>
								<form:textarea path="dealDetail.aboutProject" id="input2" />
							</div>
							<div class="span12" style="display: block;">
								<form:label path="">Location Highlights *</form:label>
								<form:textarea path="dealDetail.locationHighlights" id="input3" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="span12">
			<form:button>Create Deal</form:button>
			</div>
		</div>	
	</form:form>
</div>

