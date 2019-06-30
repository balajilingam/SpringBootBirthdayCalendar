<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
    
    <br/>
    <br/>
    <div>
    <form action="/searchbyname" method="GET">
    	Enter name of the person: <input type="text" name="firstname"><br/> <br/>
		<input type="submit" value="Search By Name">
	</form>
	<br/>
    <br/>
	  <form action="/searchbyplace" method="GET">
    	Enter place of the birth: <input type="text" name="place"><br/> <br/>
		<input type="submit" value="Search By Place">
	</form>
	</div>
    
</div>

<%@ include file="common/footer.jspf"%>

