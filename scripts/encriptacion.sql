use app_raices;

SELECT * FROM users;
CREATE USER 'nenfar chapid'@ 'localhost' IDENTIFIED BY '123456789';
CREATE USER 'NAME_USER'@'localhost' IDENTIFIED BY 'VALUE PASSWORD';# ESTRUCTURA

#crear rol de solo lectura
CREATE ROLE 'name_rol';
CREATE ROLE 'Lector';

# asignar el rol de solo lectura al usuario cliente_lector
GRANT 'Lector' TO 'nenfar chapid'@'localhost';

#asignar permisos de lectura al rol lector sobre la tabla users
GRANT SELECT ON users TO 'Lector';

#asignar permisos completos al rol admin sobre la tabla users
GRANT SELECT, INSERT, UPDATE, DELETE ON users TO 'Admin';

#encriptar la contraseña del usuario
ALTER TABLE users MODIFY COLUMN `password` VARBINARY(255);
UPDATE users
SET `password` = AES_ENCRYPT(`password`, '123456789')
WHERE users.idUser = 1;
SELECT HEX(password) FROM users WHERE idUser = 1;
SELECT users.idUser, CAST(AES_DECRYPT(`password`, '123456789')AS CHAR) AS password
FROM users WHERE users.idUser = 1;

select * from users;

#encriptar un valor simple
SET @plaintext = '123456789';
SET @ciphertext = AES_ENCRYPT(@plaintext, '1234567890');
#VERIFICAR EL VALOR CIFRADO
SELECT HEX(@ciphertext);
#DESENCRIPATAR EL VALOR CIFRADO
SELECT CAST(AES_DECRYPT(@ciphertext,'1234567890')AS CHAR);

#PLITICA DE CONTRASEÑAS
ALTER USER 'nenfar chapid'@'localhost' PASSWORD EXPIRE INTERVAL 90 DAY;

#AUDITORIA DE ACCIONES
# EN MYSQL, PUEDES HABILITAR LA AUDITORIA (SI ESTA SOPORTADO)
SHOW PLUGINS;

SELECT VERSION();
SET GLOBAL general_log = 'ON';
SHOW VARIABLES LIKE 'general_log%';