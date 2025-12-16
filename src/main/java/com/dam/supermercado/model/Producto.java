package com.dam.supermercado.model;

import java.math.BigDecimal;

/**
 * ============================================
 * MODELO: Producto (POJO)
 * ============================================
 * Clase simple que representa un producto del supermercado.
 *
 * DIFERENCIA CON LA VERSIÓN JPA:
 * - NO tiene anotación @Entity
 * - NO tiene anotación @Table
 * - NO tiene anotaciones @Column
 * - NO tiene @Id ni @GeneratedValue
 */
public class Producto {

    private Long id;
    private String nombre;
    private String descripcion;
    private BigDecimal precio;
    private Integer stock;
    private String categoria;


    // CONSTRUCTORES

    /**
     * Constructor vacío.
     * Necesario para crear objetos y luego usar los setters.
     */
    public Producto() {
    }

    /**
     * Constructor con todos los campos (excepto ID).
     * Útil para crear nuevos productos antes de insertarlos.
     */
    public Producto(String nombre, String descripcion, BigDecimal precio, Integer stock, String categoria) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.stock = stock;
        this.categoria = categoria;
    }

    /**
     * Constructor completo con ID.
     * Útil cuando recuperamos datos de la BD.
     */
    public Producto(Long id, String nombre, String descripcion, BigDecimal precio, Integer stock, String categoria) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.stock = stock;
        this.categoria = categoria;
    }


    // GETTERS Y SETTERS

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public BigDecimal getPrecio() {
        return precio;
    }

    public void setPrecio(BigDecimal precio) {
        this.precio = precio;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    @Override
    public String toString() {
        return String.format(
                "Producto [ID=%d, Nombre='%s', Precio=%s€, Stock=%d, Categoría='%s']",
                id, nombre, precio, stock, categoria
        );
    }
}
