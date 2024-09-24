<%
	String message = (String)session.getAttribute("errorMessage");
	
	
if(message != null){%>
	
	 <div class="alert alert-danger alert-dismissible fade show" role="alert">
		  <strong><%=message %></strong>
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    <span aria-hidden="true">&times;</span>
		  </button>
	</div>
	
<%
session.removeAttribute("errorMessage");
}

%>