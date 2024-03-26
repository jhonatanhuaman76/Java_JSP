<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
    String id = (String) request.getParameter("id");
    String campo = (String) request.getParameter("campo");
%>
<div class="mb-6">
	<label for=<%= id %>
		class="uppercase block mb-2 text-sm font-medium text-gray-900 dark:text-white"><%= campo %></label> 
	<input type="text" id=<%= id %>
		class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
</div>