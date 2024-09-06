#se elimnan los registros de los id_usuarios 7 al 12 por redundancia de datos
delete from usuarios
where id_usuario in (7,8,9,10,11,12)
