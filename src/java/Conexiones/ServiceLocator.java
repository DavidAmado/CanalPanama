package Conexiones;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import Excepciones.RHException;

public class ServiceLocator {
    private static ServiceLocator instance = null;
    private Connection conexion = null;
    private boolean conexionLibre = true;
    public static ServiceLocator getInstance() {
        if (instance == null) {
            try {
            	instance = new ServiceLocator();
            } catch (Exception e) {
		e.printStackTrace();
		}
	}
	return instance;
    }

	/**
	 * @throws Exception
	 *             dice si no se pudo crear la conexion
	 */
	private ServiceLocator() {
	}

	
	public synchronized Connection tomarConexion(String us, String pw) throws Exception {
            conexion = null;
            while (!conexionLibre) {
                try {
                  wait();
                } catch (InterruptedException e) {
                        e.printStackTrace();
                }
            }

            conexionLibre = false;
            notify();
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                conexion = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", us, pw);
                conexion.setAutoCommit(false);

            } catch (Exception e) {
                throw new RHException("ServiceLocator","ERROR_CONEXION_BD "+ e);
            }
            return conexion;
	}

	
	public synchronized void liberarConexion() {
		while (conexionLibre) {
			try {
				wait();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}

		conexionLibre = true;
		notify();
	}

	
	public void close() {
		try {
			conexion.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
	public void commit() {
		try {
			conexion.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void rollback() {
		try {
			conexion.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
