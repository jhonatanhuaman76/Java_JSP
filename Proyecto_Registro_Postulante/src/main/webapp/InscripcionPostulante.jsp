

<%@page import="entidad.Distrito"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscripcion</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet">
<style>
	.modal-header{
		color:#fff;
		background: #428bca;
		display: flex;
  		justify-content: center;
  		
	}
	.help-block {
	  		color: red;
	}
	.form-group.has-error .form-control-label {
	  color: red;
	}
	.form-group.has-error .form-control {
	  border: 1px solid red;
	  box-shadow: 0 0 0 0.2rem rgba(250, 16, 0, 0.18);
	}
	.input-group-append {
  cursor: pointer;
}
</style>
</head>
<body>



	<div class="container">
		
<!-- Button trigger modal -->
		<button type="button" class="btn btn-primary mt-3" data-bs-toggle="modal"
			data-bs-target="#midialog">Nueva Inscripcion</button>
		
		<!-- Modal -->
		<div class="modal fade" id="midialog" data-bs-backdrop="static"
			data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="staticBackdropLabel">REGISTRO DE POSTULANTES</h1>
					</div>
					<div class="modal-body">
						<form id="frmP" method="post" action="gestionpostulante?operacion=grabar">
							<div class="form-group">
								<label for="nroficha" class="form-label">Nro. Ficha</label>
								<input type="text" class="form-control" name="nroficha" id="id-nroficha" readonly value="0">
							</div>
							
							
							<div class="form-group">
								<label for="dni" class="form-label">DNI</label>
								<input type="text" class="form-control" name="dni" id="id-dni">
							</div>
							
														
							<div class="form-group">
								<label for="nombre" class="form-label">Nombre</label>
								<input type="text" class="form-control" name="nombre" id="id-nombre">
							</div>
							
							
							<div class="form-group">
								<label for="apellidoPAT" class="form-label">Ape_Paterno</label>
								<input type="text" class="form-control" name="apepaterno" id="id-apellidopaterno">
							</div>
							
							
							<div class="form-group">
								<label for="apellidomaterno" class="form-label">Ape_Materno</label>
								<input type="text" class="form-control" name="apematerno" id="id-apellidomaterno">
							</div>
							
							
							
		
            <h6>Seleccione sexo</h6>
             <div class="form-check">
              <input id="masculino" name="sexo" value="MASCULINO" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="masculino">Masculino</label>
            </div>
            <div class="form-check">
              <input id="femenino" name="sexo" value="FEMENINO" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="femenino">Femenino</label>
            </div>
            
							
							<div class="form-group">
								<label for="celular" class="form-label">Celular</label>
								<input type="text" class="form-control" name="celular" id="id-celular">
							</div>
							
							
					<div class="form-group">
								<label for="fechanac" class="form-label">Fecha Nac.</label>
								<input type="Date" class="form-control"  name="fechanac" id="id-fechanacimiento">
							</div>
												
				<div class="col-md-5">
              	<label for="estadocivl" class="form-label">Estado Civil</label>
              <select class="form-select"  name="estadocivil" id="id-estadocivil">
                <option value="sexo">Seleccione</option>
                <option>Soltero(a)</option>
                <option>Casado(a)</option>
                <option>Viudo(a)</option>
                <option>Divorciado(a)</option>
                <option>Conviviente</option>
                
              </select>
              
            </div>
			
							
			<div class="form-group">
				<label class="control-label" for="id_direccion">Direccion</label>
				<input class="form-control" type="text" name="direccion" id="id-Direccion">
			</div>
			
			
			<div class="form-group">
				<label class="control-label" for="id_correo">Correo</label>
				<input class="form-control" type="text" name="correo" id="id-correo">
			</div>
			
				 <h6>Trabaja?</h6>
             <div class="form-check">
              <input id="si" name="trabaja" value="SI" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="si">SI</label>
            </div>
            <div class="form-check">
              <input id="no" name="trabaja" value="NO" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="no">NO</label>
            </div>
					
		
								<div class="form-group">
								<label for="distrito" class="form-label">Distrito</label>
								<select class="form-select"  name="distrito" id="id-distrito">
									<option value=" ">[Seleccione]</option>
									<c:forEach items="${listando_distritos}" var="dis">
										<option value="${dis.coddis}">${dis.nomdis}</option>
									</c:forEach>
								</select>
							</div>							
	
	
							<div class="form-group">
								<label for="carrera" class="form-label">Carrera</label>
								<select class="form-select"  name="carrera" id="id-carrera">
									<option value=" ">[Seleccione]</option>
									<c:forEach items="${listando_carreras}" var="c">
										<option value="${c.codcarre}">${c.nomcarre}</option>
									</c:forEach>
								</select>
							</div>
	
							
							<div class="form-group">
								<label for="comentario" class="form-label">Comentario</label>
								<input type="text" class="form-control" name="comentario" id="id-comentario">
							</div>
							
							
							
							<div class="modal-footer">
								<button type="submit" class="btn btn-primary">Registrar</button>
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="btn-cerrar">Cerrar</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
		<!-- fin modal -->
					
	
		
	</div>



	<!-- libreria JS general -->
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<!-- libreria JS de bootstrap -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
	<!-- librerias de la tabla "datatable" -->	
	<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>	

	<!-- libreria para validar -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>

	<!-- bloque script -->
	<script>
	
	
	
	
	
		//asignar evento click al botón con ID "btn-cerrar"
		$(document).on("click","#btn-cerrar",function(){
			//resetear formulario "limpiar controles"
			$("#frmP").trigger("reset");
			//resetear validación del formulario
			$("#frmP").data("bootstrapValidator").resetForm();
		})

		</script>
	

		
</body>
</html>









