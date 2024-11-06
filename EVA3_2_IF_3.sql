delimiter $$

create function dia_semana(n int)
returns varchar(30) deterministic

begin
	
    declare resu varchar(30);
    case n 
		when 1 then set resu ='domingo';
        when 2 then set resu = 'lunes';
        when 3 then set resu = 'martes';
        when 4 then set resu = 'miercoles';
        when 5 then set resu = 'jueves';
        when 6 then set resu = 'viernes';
        when 7 then set resu = 'sabado';
        else set resu = 'stream brat';
		
	end case;
    return resu;
end$$
delimiter ;