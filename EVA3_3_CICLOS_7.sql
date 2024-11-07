delimiter $$
create function potencia_repeat(base int, exp int)
returns int deterministic

begin
	declare potencia int default base;
    declare i int default 1;
    
    repeat
		set potencia = potencia * base;
        set i = i + 1;
	until i >=exp end repeat;

return potencia;
end$$

delimiter ;