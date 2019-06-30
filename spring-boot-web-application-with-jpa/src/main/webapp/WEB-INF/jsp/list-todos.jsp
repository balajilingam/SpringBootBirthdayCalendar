<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<table class="table table-striped">
		<caption>Your Calendar As Below</caption>
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Birth Date</th>
				<th>Place of Birth</th>
				<th>Date</th>
				<th>Notes</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.firstName}</td>
					<td>${todo.lastName}</td>
					<td><fmt:formatDate pattern="dd/MM/yyyy"
							value="${todo.targetDate}" /></td>
					<td>${todo.place}</td>
					<td>${todo.desc}</td>
					<td><a type="button" class="btn btn-primary"
						href="/update-todo?id=${todo.id}">Edit</a> <a type="button"
						class="btn btn-warning" href="/delete-todo?id=${todo.id}">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<a type="button" class="btn btn-success" href="/add-todo">Add</a>
	</div>
</div>
<%@ include file="common/footer.jspf"%>