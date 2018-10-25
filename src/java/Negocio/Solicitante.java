/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

/**
 *
 * @author kusan
 */
public class Solicitante {
    
    private String codigo;
    private String nombre;
    private String apellido;
    private String facultad;
    private String proyecto;
    private String jornada;
    private String jornadas;
    private String correo;
    private int valor_matricula;
    private int num_renovaciones;
    private double promedio;
    private int creditos_inscritos;
    private String user;
    private String passwd;
    private String estado;

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }
    
    

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getFacultad() {
        return facultad;
    }

    public void setFacultad(String facultad) {
        this.facultad = facultad;
    }

    public String getProyecto() {
        return proyecto;
    }

    public void setProyecto(String proyecto) {
        this.proyecto = proyecto;
    }

    public String getJornada() {
        return jornada;
    }

    public void setJornada(String jornada) {
        this.jornada = jornada;
    }

    public String getJornadas() {
        return jornadas;
    }

    public void setJornadas(String jornadas) {
        this.jornadas = jornadas;
    }

    
    
    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getValor_matricula() {
        return valor_matricula;
    }

    public void setValor_matricula(int valor_matricula) {
        this.valor_matricula = valor_matricula;
    }

    public int getNum_renovaciones() {
        return num_renovaciones;
    }

    public void setNum_renovaciones(int num_renovaciones) {
        this.num_renovaciones = num_renovaciones;
    }

    public double getPromedio() {
        return promedio;
    }

    public void setPromedio(double promedio) {
        this.promedio = promedio;
    }

    public int getCreditos_inscritos() {
        return creditos_inscritos;
    }

    public void setCreditos_inscritos(int creditos_inscritos) {
        this.creditos_inscritos = creditos_inscritos;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
    
}
