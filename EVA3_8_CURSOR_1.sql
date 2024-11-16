delimiter $$
create procedure crear_rfc()
begin
	declare terminar int default false;
    declare nom varchar(50);
    declare paterno varchar(50);
    declare materno varchar(50);
    declare fecha date;
    declare rfc varchar(15);
    declare per_id int;
    
    declare persona_curs cursor for 
	select nombre, apat, ifnull(amat, 'x'), fecha_nac, id from persona;
    
	declare continue handler for not found set terminar = true;
	
	open persona_curs;
    
    crear: loop
		fetch persona_curs into nom, paterno, materno, fecha, per_id;
        if terminar then 
			leave crear;
		end if;
        set rfc = concat(substring(paterno, 1,2), substring(materno, 1,1),
			substring(nom, 1,1),
			 substring(fecha, 1,4), substring(fecha,6,2),
            substring(fecha, 9,2));
		update persona set clave_rfc = upper(rfc) where id = per_id;
    end loop crear;
    
end$$
delimiter ;