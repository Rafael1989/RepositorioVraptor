<%@ attribute name="id" required="true" %>
<%@ attribute name="name" required="true" %>

<input type="text" id="${id}" name="${name}" />
<script type="text/javascript">
	$("#${id}").datepicker({dateFormat: 'dd/mm/yy', changeYear: true, changeMonth: true});
</script>