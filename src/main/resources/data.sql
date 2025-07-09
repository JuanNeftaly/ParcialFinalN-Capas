-- 1. Insertar usuario ADMIN si no existe
INSERT INTO usuarios (
    nombre, correo, password, nombre_rol
)
SELECT 'Admin', 'admin@example.com',
       '$2y$10$.yc9RkTR/./yNlhUNeKePumLNiLo9x3gGRU1vWHclDisCv94mkW86', 'ROLE_TECH'
    WHERE NOT EXISTS (
    SELECT 1 FROM usuarios WHERE correo = 'admin@example.com'
);

-- 2. Insertar usuario NORMAL si no existe
INSERT INTO usuarios (
    nombre, correo, password, nombre_rol
)
SELECT 'UsuarioNormal', 'user@example.com',
       '$2y$10$Y0Oj5NtZijL4usz2LAoWUurRt4Xm3LLwRftg2YSJIqgePg3qH3bFG', 'ROLE_USER'
    WHERE NOT EXISTS (
    SELECT 1 FROM usuarios WHERE correo = 'user@example.com'
);
