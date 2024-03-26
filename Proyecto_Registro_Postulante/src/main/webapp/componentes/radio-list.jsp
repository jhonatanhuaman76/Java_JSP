<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	<h3 class="uppercase mb-4 font-semibold text-gray-900 dark:text-white"><%=groupName%></h3>
	<ul
		class="items-center w-full text-sm font-medium text-gray-900 bg-white border border-gray-300 rounded-lg sm:flex dark:bg-gray-700 dark:border-gray-600 dark:text-white">

		<c:forEach var="option" items="${pageScope.options}">
			<li
				class="w-full border-b border-gray-300 sm:border-b-0 sm:border-r dark:border-gray-600">
				<div class="flex items-center ps-3">
					<input id="horizontal-list-radio-${option}" type="radio"
						value="<%=id %>" name="list-radio"
						class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-700 dark:focus:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500">
					<label for="horizontal-list-radio-${option}"
						class="w-full py-3 ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">${option}</label>
				</div>
			</li>
		</c:forEach>

	</ul>
</div>
