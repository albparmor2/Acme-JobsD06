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
	<acme:form-textbox code="employer.job.form.label.reference" path="reference" placeholder="EEEE-JJJJ" readonly="${status == 'Published'}"/>
	<jstl:if test="${command != 'create'}">
	<acme:form-textbox code="employer.job.form.label.status" path="status" readonly="true"/>
	</jstl:if>
	<acme:form-textbox code="employer.job.form.label.title" path="title" readonly="${status == 'Published'}"/>
	<acme:form-moment code="employer.job.form.label.deadline" path="deadline" readonly="${status == 'Published'}"/>
	<acme:form-money code="employer.job.form.label.salary" path="salary" readonly="${status == 'Published'}"/>
	<acme:form-url code="employer.job.form.label.moreInfo" path="moreInfo" readonly="${status == 'Published'}"/>
	<acme:form-textarea code="employer.job.form.label.description" path="description" readonly="${status == 'Published'}"/>
	
	<jstl:if test="${command != 'create'}">
	<jstl:if test="${status == 'Published'}">
	<acme:form-submit method="get" code="employer.job.form.label.auditRecord" action="/employer/audit-record/list?id=${id}"/>
	</jstl:if>
	<acme:form-submit method="get" code="employer.job.form.label.duty" action="/employer/duty/list?id=${id}"/>
	
	<jstl:if test="${status == 'Draft'}">
	<acme:form-submit method="get" code="employer.job.form.label.duty.create" action="/employer/duty/create?jobId=${id}"/>
	</jstl:if>
	<p></p>
	
	</jstl:if>
	
	<acme:form-submit test="${(command == 'show' || command =='update-publish') && status == 'Draft'}" code="employer.job.form.button.update.publish"
	action="/employer/job/update-publish"/>
	<acme:form-submit test="${(command == 'show' || command =='update-publish') && status == 'Draft'}" code="employer.job.form.button.update"
	action="/employer/job/update"/>
	<acme:form-submit test="${command == 'show' || command == 'update-publish'}" code="employer.job.form.button.delete"
	action="/employer/job/delete"/>
	<acme:form-submit test="${command == 'create'}" code="employer.job.form.button.create"
	action="/employer/job/create"/>
	<acme:form-submit test="${command == 'update'}" code="employer.job.form.button.update"
	action="/employer/job/update"/>
	<acme:form-submit test="${command == 'delete'}" code="employer.job.form.button.delete"
	action="/employer/job/delete"/>
	

	<acme:form-return code="employer.job.form.button.return"/>
		
</acme:form>

