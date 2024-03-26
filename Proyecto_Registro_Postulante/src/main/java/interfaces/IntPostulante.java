package interfaces;

import java.util.ArrayList;

import entidad.Carrera;
import entidad.Distrito;
import entidad.Postulante;

public interface IntPostulante {
	int registraPostulante(Postulante p);
	
	//metodo para listar los distritos
	ArrayList<Distrito>listarDatosDistrito();
	
	//metodo para listar las carreras
	ArrayList<Carrera>listarDatosCarrera();
}
