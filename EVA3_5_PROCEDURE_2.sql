delimiter $$
create function agregar_pais(nombre varchar(40), id varchar(2))
returns int deterministic modifies sql data

begin
	insert into countries(country_id, country_name, region_id)
    value (id, nombre,1);
    
    return 1;
end$$
delimiter ;
