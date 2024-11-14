delimiter $$
create procedure insertar_prueba(clave int)

begin
	declare exit handler for sqlstate '23000'
    begin
		select 'error: clave duplicada' as mensaje;
    end;
    
    insert into prueba(id) value (clave);
	select 'insertado' as mensaje;

    
end$$


delimiter ;