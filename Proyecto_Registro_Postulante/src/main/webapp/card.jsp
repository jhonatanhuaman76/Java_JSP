<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String titulo = (String) request.getParameter("titulo");
    String contenido = (String) request.getParameter("contenido");
%>

<div class="max-w-sm mx-auto bg-white rounded overflow-hidden shadow-lg my-4">
    <div class="px-6 py-4">
        <div class="font-bold text-xl mb-2"><%= titulo %></div>
        <p class="text-gray-700 text-base"><%= contenido %></p>
    </div>
</div>
