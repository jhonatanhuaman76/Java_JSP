<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	String sexoOptions = "masculino,femenino";
	String estCivilOptions = "soltero,casado,viudo,divorciado,conviviente";
%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Expires" content="0">
<meta http-equiv="Last-Modified" content="0">
<meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta charset="ISO-8859-1">
<title>Registro Postulantes</title>
<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet" href="estilos-n.css">
</head>

<body class="relative">
	<div
		class="absolute top-0 z-[-3] min-h-screen w-full h-full rotate-180 transform bg-white bg-[radial-gradient(60%_120%_at_50%_50%,hsla(0,0%,100%,0)_0,rgba(252,205,238,.5)_100%)]">
	</div>
	<header>

		<div class="fixed top-0 w-full z-10">
			<nav
				class="bg-[#001C2C] text-white text-xs flex justify-between px-20 py-3">
				<ul class="flex gap-x-4">
					<li><a href="#">Servicio al Estudiante</a></li>
					<li><a href="#">Para Empresas</a></li>
					<li><a href="#">Para Colegios</a></li>
					<li><a href="#">Egresados</a></li>
					<li><a href="#">Contactanos</a></li>
				</ul>
				<ul class="flex gap-x-4">
					<li><a href="#">Mi Cibertec-Intranet</a></li>
					<li><a href="#">Portal Laboral</a></li>
					<li><a href="#">Área Virtual</a></li>
				</ul>
			</nav>

			<div
				class="bg-[#000]/45 h-24 flex items-center px-20 uppercase justify-between font-bold text-white text-sm">
				<img src="IMG/logo-white.svg" />
				<ul class="flex">
					<li class="flex items-center gap-x-2 ml-8">Carreras <img
						src="IMG/arrow_bottom_green.svg" />
					</li>
					<li class="flex items-center gap-x-2 ml-8">Cursos Cortos <img
						src="IMG/arrow_bottom_green.svg" />
					</li>
					<li class="flex items-center gap-x-2 ml-8">Conoce Cibertec <img
						src="IMG/arrow_bottom_green.svg" />
					</li>
				</ul>
				<div>
					<button
						class="flex items-center px-7 py-3 bg-[#1bd742] rounded-full hover:bg-white hover:text-black transition">Incribete</button>
				</div>
			</div>
		</div>
		<div
			class="relative flex flex-col justify-center w-full h-full min-h-[595px]">
			<div class="overlay"></div>
			<img class="absolute object-cover w-full h-full top-0 z-[-2]"
				src="IMG/banner.jpg" />
			<div class="w-[480px] mx-20">
				<h1 class="uppercase text-5xl text-white font-bold text-pretty mb-6">
					Carreras de <br> tecnologias de <br> la informacion
				</h1>
				<p class="text-white font-semibold text-pretty mb-6">Con las
					carreras de tecnologia de la informacion te convertiras en un
					profesional capaz de brindar soluciones. !Sé parte de la comunidad
					TEC!</p>
				<button
					class="rounded-full bg-[#009AA6] px-12 py-3 uppercase text-white font-semibold">Postula
					aqui</button>
			</div>
		</div>

		<form class="mt-20 w-1/2 m-auto max-w-[750px] min-w-[200px]">
			<h2 class="uppercase text-3xl text-center font-bold mb-16">Ficha
				de inscripcion de postulante</h2>

			<jsp:include page="componentes/text-field.jsp">
				<jsp:param name="id" value="apellido-paterno" />
				<jsp:param name="campo" value="apellido paterno" />
			</jsp:include>

			<jsp:include page="componentes/text-field.jsp">
				<jsp:param name="id" value="apellido-materno" />
				<jsp:param name="campo" value="apellido materno" />
			</jsp:include>

			<jsp:include page="componentes/text-field.jsp">
				<jsp:param name="id" value="nombres" />
				<jsp:param name="campo" value="nombres" />
			</jsp:include>

			<jsp:include page="componentes/number-field.jsp">
				<jsp:param name="id" value="dni" />
				<jsp:param name="campo" value="Nro DNI" />
			</jsp:include>

			<jsp:include page="componentes/radio-list.jsp">
				<jsp:param name="id" value="sexo" />
				<jsp:param name="options" value="<%= sexoOptions %>" />
				<jsp:param name="group-name" value="sexo" />
			</jsp:include>
			
			<jsp:include page="componentes/select-list.jsp">
				<jsp:param name="id" value="estado-civil" />
				<jsp:param name="options" value="<%= estCivilOptions %>" />
				<jsp:param name="group-name" value="estado civil" />
			</jsp:include>
			
			<jsp:include page="componentes/number-field.jsp">
				<jsp:param name="id" value="celular" />
				<jsp:param name="campo" value="Nro Celular" />
			</jsp:include>
		</form>
	</header>
</div>
</body>

</html>