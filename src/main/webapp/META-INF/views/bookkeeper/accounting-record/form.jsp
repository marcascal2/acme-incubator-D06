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
	<jstl:if test="${command != 'create' && !canUpdate}">
		<acme:form-textbox code="bookkeeper.accounting-record.form.label.title" path="title" readonly="true" />
		<acme:form-textbox code="bookkeeper.accounting-record.form.label.status" path="status" readonly="true" placeholder="DRAFT or PUBLISHED"/>
		<acme:form-moment code="bookkeeper.accounting-record.form.label.creationMoment" path="creationMoment" readonly="true" />
		<acme:form-textbox code="bookkeeper.accounting-record.form.label.body" path="body" readonly="true" />
	</jstl:if>

	<jstl:if test="${command == 'create' || canUpdate}">
		<acme:form-textbox code="bookkeeper.accounting-record.form.label.title" path="title" />
		<acme:form-textbox code="bookkeeper.accounting-record.form.label.status" path="status" />
		<acme:form-textbox code="bookkeeper.accounting-record.form.label.body" path="body" />

		<acme:form-submit test="${command == 'create'}" code="bookkeeper.accounting-record.form.button.create" action="/bookkeeper/accounting-record/create" />
		<acme:form-submit test="${command != 'create'}" code="bookkeeper.accounting-record.form.button.update" action="/bookkeeper/accounting-record/update" />
	</jstl:if>

	<input id="invId" name="invId" value="${invId}" hidden="true" />

	<acme:form-return code="bookkeeper.accounting-record.form.button.return" />
</acme:form>
