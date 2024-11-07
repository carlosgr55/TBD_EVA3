delimiter $$
create function potencia_while(base int, exp int)
returns int deterministic

begin
	declare potencia int;
    declare i int default 0;
    set i = exp;
	set potencia = base;
    while i < exp+1 do
		set i = i+1;
		set potencia = potencia * base;
    end while;
    
	return potencia;
end$$
delimiter ;