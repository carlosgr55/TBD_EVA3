delimiter $$
create function conversion_temp(formula int, valor int)
returns int deterministic

begin
    declare conversion int;
    case formula
		when 1 then set conversion = valor + 273;
        when 2 then set conversion = valor * 1.8 + 32;
        when 3 then set conversion = valor -273;
    end case;
	return conversion;
end$$
delimiter ;