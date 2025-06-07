package com.example.lab7_h792_20221957.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import lombok.Getter;
import lombok.Setter;

import java.text.DecimalFormat;
import java.time.LocalDate;

@Entity
@Table(name = "proveedores")
@Getter
@Setter
public class Proveedor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "razon_social", nullable = false)
    private String razonSocial;

    @Column(name = "nombre_comercial", nullable = false)
    private String nombreComercial;

    @Column(name = "ruc",nullable = false, length = 11, unique = true)
    private Integer ruc;

    @Column(name = "telefono", nullable = false,length = 9)
    private Integer telefono;

    @Column(name = "correo_electronico",nullable = false)
    @Email
    private String correoElectronico;

    @Column(name = "sitio_web", nullable = false)
    private String sitioWeb;

    @Column(name = "direccion_fisica", nullable = false)
    private String direccionFisica;

    @Column(name = "pais", nullable = false)
    private String pais;

    @Column(name = "representante_legal",nullable = false)
    private String representanteLegal;

    @Column(name = "dni_representante_legal",nullable = false, length = 8)
    private Integer dniRepresentanteLegal;

    @Column(name = "tipo_proveedor", nullable = false)
    private String tipoProveedor;

    @Column(name = "categoria", nullable = false)
    private String categoria;

    @Column(name = "facturacion_anual_dolares", nullable = false)
    private DecimalFormat facturacionAnualDolares;

    @Column(name = "fechaDeRegistro",nullable = false)
    private LocalDate fechaDeRegistro;

    @Column(name = "ultimaActualizacion",nullable = false)
    private LocalDate ultimaActualizacion;

    @Column
    private Boolean estado;

}
