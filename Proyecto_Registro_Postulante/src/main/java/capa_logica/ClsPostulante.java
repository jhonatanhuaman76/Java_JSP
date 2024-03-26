package capa_logica;

import org.eclipse.jdt.internal.compiler.batch.Main;

import entidad.Carrera;
import entidad.Distrito;
import entidad.Postulante;
import interfaces.IntPostulante;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import capa_datos.ConexionBD;

public class ClsPostulante implements IntPostulante {
	
	public static int registrarPostu() {
			int salida = -1;
			PreparedStatement pstm = null;
			Connection conn = null;
			try {

				conn = ConexionBD.miConexion();
				String sql = "INSERT INTO POSTULANTE VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				pstm = conn.prepareStatement(sql);

				pstm.setString(1, "SEBASTIAN");
				pstm.setString(2, "BERNARDO");
				pstm.setString(3, "QUISPE");
				pstm.setString(4, "89654123");
				pstm.setString(5, "MASCULINO");
				pstm.setString(6, "SOLTERO");
				pstm.setString(7, "966493361");
				pstm.setString(8, "02/03/2005");
				pstm.setString(9, "asdasdasdasdasd");
				pstm.setString(10, "sebastian@gmail.com");
				pstm.setString(11, "NO");
				pstm.setString(12, "");
				pstm.setInt(13, 1);
				pstm.setInt(14, 1000);
				salida = pstm.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (pstm != null)
						pstm.close();
					if (conn != null)
						conn.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			return salida;
	}

	public static void mostrarPostulantes() {
		ArrayList<String> data = new ArrayList<>();
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			cn = ConexionBD.miConexion();
			String sql = "select * from postulante";
			pstm = cn.prepareStatement(sql);
			rs = pstm.executeQuery();
			while (rs.next()) {
				System.out.print(rs.getString(4));
				data.add(rs.getString(4));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {

				if (cn != null)
					cn.close();
				if (rs != null)
					rs.close();
				if (pstm != null)
					pstm.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

	@Override
	public int registraPostulante(Postulante objP) {
		int salida = -1;
		PreparedStatement pstm = null;
		Connection conn = null;
		try {

			conn = ConexionBD.miConexion();
			String sql = "INSERT INTO POSTULANTE VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstm = conn.prepareStatement(sql);

			System.out.print(objP.getApePat()+"\n");
			System.out.print(objP.getApeMat()+"\n");
			System.out.print(objP.getNombre()+"\n");
			System.out.print(objP.getDni()+"\n");
			System.out.print(objP.getSexo()+"\n");
			System.out.print(objP.getEstado_civil()+"\n");
			System.out.print(objP.getNrocelular()+"\n");
			System.out.print(objP.getFecha_nac()+"\n");
			System.out.print(objP.getDireccion()+"\n");
			System.out.print(objP.getCorreo()+"\n");
			System.out.print(objP.getTrabaja()+"\n");
			System.out.print(objP.getComentarios()+"\n");
			System.out.print(objP.getCod_distrito()+"\n");
			System.out.print(objP.getCod_carrera()+"\n");

			pstm.setString(1, objP.getApePat());
			pstm.setString(2, objP.getApeMat());
			pstm.setString(3, objP.getNombre());
			pstm.setString(4, objP.getDni());
			pstm.setString(5, objP.getSexo());
			pstm.setString(6, objP.getEstado_civil());
			pstm.setString(7, objP.getNrocelular());
			pstm.setString(8, objP.getFecha_nac());
			pstm.setString(9, objP.getDireccion());
			pstm.setString(10, objP.getCorreo());
			pstm.setString(11, objP.getTrabaja());
			pstm.setString(12, objP.getComentarios());
			pstm.setInt(13, objP.getCod_distrito());
			pstm.setInt(14, objP.getCod_carrera());
			
			salida = pstm.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstm != null)
					pstm.close();
				if (conn != null)
					conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return salida;
	}

	@Override
	public ArrayList<Distrito> listarDatosDistrito() {
		ArrayList<Distrito> data = new ArrayList<Distrito>();
		Distrito objDis = null;
		Connection cn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			cn = ConexionBD.miConexion();
			String sql = "select * from distrito";
			pstm = cn.prepareStatement(sql);
			rs = pstm.executeQuery();
			while (rs.next()) {
				objDis = new Distrito();
				objDis.setCoddis(rs.getInt(1));
				objDis.setNomdis(rs.getString(2));
				data.add(objDis);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {

				if (cn != null)
					cn.close();
				if (rs != null)
					rs.close();
				if (pstm != null)
					pstm.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return data;
	}

	@Override
	public ArrayList<Carrera> listarDatosCarrera() {
		ArrayList<Carrera> data2 = new ArrayList<Carrera>();
		Carrera objC = null;
		Connection cn1 = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try {
			cn1 = ConexionBD.miConexion();
			String sql = "select * from carrera";
			pstm = cn1.prepareStatement(sql);
			rs = pstm.executeQuery();
			while (rs.next()) {
				objC = new Carrera();
				objC.setCodcarre(rs.getInt(1));
				objC.setNomcarre(rs.getString(2));
				data2.add(objC);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstm != null)
					pstm.close();
				if (cn1 != null)
					cn1.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return data2;
	}
	
	
	public static void main(String[]args) {
		registrarPostu();
		mostrarPostulantes();
	}
	

}
