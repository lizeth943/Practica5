/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.emergentes.modelo;
public class Producto {
  int id;
  String descripcion;
  int id_categoria;
  int cantidad;
  public Producto(){
  
  }
    public Producto(int id, String descripcion, int id_categoria, int cantidad) {
        this.id = id;
        this.descripcion = descripcion;
        this.id_categoria = id_categoria;
        this.cantidad = cantidad;
    }

    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public String getDescripcion() {return descripcion;}
    public void setDescripcion(String descripcion) {this.descripcion = descripcion;}
    public int getCantidad() {return cantidad;}
    public void setCantidad(int cantidad) { this.cantidad = cantidad;}
    public int getId_categoria() {
        return id_categoria;
    }
    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }
}
