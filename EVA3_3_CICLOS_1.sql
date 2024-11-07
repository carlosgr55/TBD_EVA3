delimiter $$

create function sumatoria_loop(n int)
returns int deterministic

begin
	declare sumatoria int default 0;
	declare i int default 0;
	
    ciclo: loop
		set sumatoria = sumatoria + n;
        set i = i + 1;
        if i > n then 
			leave ciclo;
        end if;
    end loop ciclo;
	
	return sumatoria;
end$$
delimiter ;