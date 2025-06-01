--inserciones en la tabla cliente
INSERT INTO cliente (apellido1, apellido2, nombres, documento, idtipodocumento, fechanacimiento, idciudadnacimiento, direccion, movil, correo)
VALUES 
('patiño', 'Rodriguez', 'Deivy', '123456789', 1, '1990-05-15', 1, ROW('Cra 50 #10-20', 1), '3001234567', 'juan.gomez@email.com'),
('Pérez', 'Martínez', 'Laura Sofía', '987654321', 2, '1988-10-25', 2, ROW('Calle 72 #15-10', 2), '3109876543', 'laura.perez@email.com'),
('Rodríguez', 'Díaz', 'Andrés Felipe', '1122334455', 3, '1995-01-05', 3, ROW('Av. Siempre Viva 123', 3), '3023344556', 'andres.rd@email.com'),
('Morales', 'Castro', 'Valentina', '5566778899', 1, '1992-07-18', 4, ROW('Diagonal 60 #20-30', 4), '3125566778', 'valentina.mc@email.com'),
('Torres', 'Ríos', 'Camilo Andrés', '6677889900', 4, '1993-11-12', 5, ROW('Transv 45 #6-15', 5), '3206677889', 'camilo.tr@email.com');


--insert con error, para demostracion de validacion de ciudad
INSERT INTO cliente (apellido1, apellido2, nombres, documento, idtipodocumento, fechanacimiento, idciudadnacimiento, direccion, movil, correo)
VALUES 
('sanchez', 'Rodriguez', 'sara', '123456782', 2, '2000-05-15', 1, ROW('Cra 50 #10-20', 1), '3007654312', 'sara.sanchez@gmail.com');

--insert correcto
INSERT INTO cliente (apellido1, apellido2, nombres, documento, idtipodocumento, fechanacimiento, idciudadnacimiento, direccion, movil, correo)
VALUES 
('santos', 'aveiro', 'cristiano', '1013967542', 1, '1985-02-05', 1, ROW('Cra 50 #10-20', 2), '3007908090', 'cristiano.ronaldo@gmail.com');




INSERT INTO cuentaAhorro (
    idCliente,
    ahorros
) VALUES (
    1,
    ROW(ROW(16534, 20000, CURRENT_DATE), 3)
);

