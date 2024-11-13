delimiter $$
create function generar_correo(nombre varchar(100), apellido varchar(100), departamento varchar(100))
returns varchar(100) deterministic

begin
	declare inicial varchar(1) default substring(nombre, 1,1);
    declare correo varchar(100);
    
    set correo = concat(inicial, '.',apellido,'@',departamento,'.com');
	return correo;
end$$



delimiter ;