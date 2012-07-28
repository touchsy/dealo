<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div style="align:center;text-align:center;"> 
    <p>
      <h2>An error occurred</h2>
    </p>
    <br/><br/>
    <c:if test="${not empty exception}">
      <p>
        <h3 style="color:red;">
          <c:out value="${exception.localizedMessage}" />
        </h3>
      </p>
      </c:if>
</div>