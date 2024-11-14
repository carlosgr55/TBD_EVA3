delimiter $$
create procedure contar_paises(out cont int)

begin
	declare terminar int default false;
    declare id varchar(2);
    
	declare contador cursor for 
    select country_id from countries;	
    
	/*Excepcion*/
	declare continue handler for not found
    begin
		set terminar = true;
    end;

	open contador;
	set cont = 0;
	contar_p: loop
		fetch contador into id;
        set cont = cont +1;
        if terminar then
			leave contar_p;
        end if;
    end loop contar_p;

end$$


delimiter ;