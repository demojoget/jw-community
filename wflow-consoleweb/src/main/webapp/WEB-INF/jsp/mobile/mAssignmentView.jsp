<%@ include file="/WEB-INF/jsp/includes/taglibs.jsp" %>

<!DOCTYPE html>
<html class="ui-mobile">
    <head>
        <title>
        </title>
        <jsp:include page="mScripts.jsp" flush="true"/>
    </head>
    <body class="ui-mobile-viewport">

        <div id="assignmentView" data-role="page" data-url="assignmentView" tabindex="0" style="min-height: 377px; ">

            <div data-role="header" data-position="fixed" role="banner" style="top: 0px; ">
                <h1 class="ui-title" tabindex="0" role="heading" aria-level="1">
                <c:choose>
                <c:when test="${!stay && submitted && errorCount <= 0}">
                    <fmt:message key="client.app.run.process.label.assignment.updated" />
                </c:when>
                <c:otherwise>
                    <c:out value="${assignment.processName}" escapeXml="true"/> - <c:out value="${assignment.activityName}" escapeXml="true"/>                   
                </c:otherwise>
                </c:choose>
                </h1>
                <div data-type="horizontal" data-role="controlgroup" class="ui-btn-right"> 
                    <a href="${pageContext.request.contextPath}/web/mobile" rel="external" target="_self" id="all-apps" data-role="button" data-icon="grid"><fmt:message key="mobile.apps.allApps"/></a>
                </div>
            </div>
            <div id="logo"></div>
            <div data-role="content" class="ui-content" role="main">                    
                <c:choose>
                <c:when test="${!stay && submitted && errorCount <= 0}">
                    <fmt:message key="client.app.run.process.label.assignment.updated" />
                </c:when>
                <c:otherwise>
                    <jsp:include page="/WEB-INF/jsp/client/app/formView.jsp" flush="true" />
                </c:otherwise>
                </c:choose>
            </div>		

        </div>

        <div class="ui-loader" style="top: 332px; "><h1><fmt:message key="mobile.apps.loading"/></h1></div>
        <jsp:include page="mFooter.jsp" flush="true" />   
    </body>    
</html>
