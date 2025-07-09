package com.uca.parcialfinalncapas.dto.response;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class LoginResponse {
    private String nombre;
    private String correo;
    private String rol;
    private String token;
}
