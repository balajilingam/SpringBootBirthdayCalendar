<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
    <form:form method="post" commandName="todo">
        <form:hidden path="id" />
        
        <fieldset class="form-group">
            <form:label path="firstName">First Name</form:label>
            <form:input path="firstName" type="text" class="form-control"
                required="required" />
            <form:errors path="firstName" cssClass="text-warning" />
        </fieldset>
        <fieldset class="form-group">
            <form:label path="lastName">last Lame</form:label>
            <form:input path="lastName" type="text" class="form-control"
                required="required" />
            <form:errors path="lastName" cssClass="text-warning" />
        </fieldset>
        <fieldset class="form-group">
            <form:label path="targetDate">BirthDay</form:label>
            <form:input path="targetDate" type="text" class="form-control"
                required="required" />
            <form:errors path="targetDate" cssClass="text-warning" />
        </fieldset>
        <fieldset class="form-group">
            <form:label path="place">Place of Birth</form:label>
            <form:input path="place" type="text" class="form-control"
                required="required" />
            <form:errors path="place" cssClass="text-warning" />
        </fieldset>
        <fieldset class="form-group">
            <form:label path="desc">Description</form:label>
            <form:input path="desc" type="text" class="form-control"
                required="required" />
            <form:errors path="desc" cssClass="text-warning" />
        </fieldset>
        <button type="submit" class="btn btn-success">Submit</button>
    </form:form>
</div>

<%@ include file="common/footer.jspf"%>

<script>
    $('#targetDate').datepicker({
        format : 'dd/mm/yyyy'
    });
</script>