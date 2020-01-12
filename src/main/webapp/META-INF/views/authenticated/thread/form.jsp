<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-textbox code="authenticated.thread.form.label.title" path="title" readonly="${command !='create'}"/>
	<jstl:if test="${command != 'create'}">
	<acme:form-moment code="authenticated.thread.form.label.moment" path="moment" readonly="true"/>
	<acme:form-textbox code="authenticated.thread.form.label.creator.username" path="creator.userAccount.username" readonly="true"/>
	<jstl:if test="${isCreator == true}">
	<a href="/acme-jobs/authenticated/participation/list?threadId=${id}"><acme:message code="authenticated.thread.form.label.participations"/></a>
	<p></p>
	<a href="/acme-jobs/authenticated/participation/create?threadId=${id}"><acme:message code="authenticated.thread.form.label.create.participation"/></a>
	<p></p>
	</jstl:if>
	<a href="/acme-jobs/authenticated/message/list?threadId=${id}"><acme:message code="authenticated.thread.form.label.messages"/></a>
	<p></p>
	<a href="/acme-jobs/authenticated/message/create?threadId=${id}"><acme:message code="authenticated.thread.form.label.create.message"/></a>
	<p></p>
	</jstl:if>
	<acme:form-submit test="${command == 'create'}" code="authenticated.thread.form.button.create"
	action="/authenticated/thread/create"/>
	
	<acme:form-return code="authenticated.thread.form.button.return"/>
	
	
</acme:form>