delimiter $$
create function dia_semana(fecha date)
returns varchar(20) deterministic

begin
	declare dia varchar(20);
    declare num_dia int;
    
    set num_dia = dayofweek(fecha);
    
    case num_dia
		when 1 then set dia = 'domingo';
        when 2 then set dia = 'lunes';
        when 3 then set dia = 'martes';
        when 4 then set dia = 'miercoles';
        when 5 then set dia = 'jueves';
        when 6 then set dia = 'viernes';
        when 7 then set dia = 'sabado';
    end case;
	return dia;
end$$

delimiter ;