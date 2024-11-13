delimiter $$
create procedure agregar_pais(in nombre varchar(40), in id varchar(2))
begin
	insert into countries(country_id, country_name, region_id)
    value (id, nombre,1);
    
end$$
delimiter ;