delimiter $$
create function sumar_repeat(n int)
returns int deterministic

begin
	declare sumatoria int default 0;
    declare i int default 1;

	repeat 
		set sumatoria = sumatoria + i;
        set i = i + 1;
    until i > n end repeat;
	return sumatoria;
end$$

delimiter ;