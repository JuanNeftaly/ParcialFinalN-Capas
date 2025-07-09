package com.uca.parcialfinalncapas.service;

import com.uca.parcialfinalncapas.dto.request.LoginRequest;
import com.uca.parcialfinalncapas.dto.response.LoginResponse;

public interface AuthService {
    public LoginResponse login(LoginRequest request);
}
