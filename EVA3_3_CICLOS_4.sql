delimiter $$
create function potencia_repeat(base int, exp int)
returns int deterministic

begin
    declare i int default 1;
    declare potencia int;
    set potencia = base;
	ciclo: loop 
        set potencia = potencia * base;
        set i = i + 1;
        if i >= exp then
			leave ciclo;
		end if;
    end loop ciclo;
    return potencia;
end$$

delimiter ;