<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String id = (String) request.getParameter("id");
	String groupName = (String) request.getParameter("group-name");
	String optionsString = request.getParameter("options");
	String[] options = optionsString.split(",");
	pageContext.setAttribute("options", options);
%>

<div class="mb-6">
	<label for="<%=id %>"
		class="uppercase block mb-2 text-sm font-medium text-gray-900 dark:text-white"><%= groupName %></label>
		<select id="<%=id %>"
			class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
			<option selected>Selecciona</option>
			
			<c:forEach var="option" items="${pageScope.options}">
				<option value="${option}">${option}</option>
			</c:forEach>
		</select>
</div>
