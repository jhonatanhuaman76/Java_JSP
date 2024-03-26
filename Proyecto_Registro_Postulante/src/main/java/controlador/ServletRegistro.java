package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import capa_logica.ClsPostulante;
import entidad.Distrito;
import entidad.Carrera;
import entidad.Postulante;
import java.util.ArrayList;

/**
 * Servlet implementation class ServletRegistro
 */
@WebServlet("/gestionpostulante")
public class ServletRegistro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ClsPostulante objP = new ClsPostulante();

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String resul;
		resul = request.getParameter("operacion");

		if (resul.equalsIgnoreCase("listar"))
			listarDatos(request, response);
		else if (resul.equalsIgnoreCase("grabar"))
			grabarInscripcion(request, response);
	}

	private void grabarInscripcion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Declarar variables para obtener datos de cada control de JSP
		String nrof, dni, nom, apep, apem, sex, celu, fecnac, estaciv, direc, correo, tra, codc, coddis, comen;
		nrof = request.getParameter("nroficha");
		dni = request.getParameter("dni");
		nom = request.getParameter("nombre");
		apep = request.getParameter("apepaterno");
		apem = request.getParameter("apematerno");
		sex = request.getParameter("sexo");
		celu = request.getParameter("celular");
		fecnac = request.getParameter("fechanac");
		estaciv = request.getParameter("estadocivil");
		direc = request.getParameter("direccion");
		correo = request.getParameter("correo");
		tra = request.getParameter("trabaja");
		codc = request.getParameter("carrera");
		coddis = request.getParameter("distrito");
		comen = request.getParameter("comentario");
		
		
		Postulante p = new Postulante();
		p.setDni(dni);
		p.setNombre(nom);
		p.setApePat(apep);
		p.setApeMat(apem);
		p.setSexo(sex);
		p.setNrocelular(celu);
		p.setFecha_nac(fecnac);
		p.setEstado_civil(estaciv);
		p.setDireccion(direc);
		p.setCorreo(correo);
		p.setTrabaja(tra);
		p.setCod_carrera(Integer.parseInt(codc));
		p.setCod_distrito(Integer.parseInt(coddis));
		p.setComentarios(comen);

		if (Integer.parseInt(nrof) == 0) {
			objP.registraPostulante(p);
			request.getRequestDispatcher("/inicio.jsp").forward(request, response);
		}
	}

	private void listarDatos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<Carrera> listac = objP.listarDatosCarrera();
		ArrayList<Distrito> listad = objP.listarDatosDistrito();
		request.setAttribute("listando_carreras", listac);
		request.setAttribute("listando_distritos", listad);
		request.getRequestDispatcher("/InscripcionPostulante.jsp").forward(request, response);

	}

}
