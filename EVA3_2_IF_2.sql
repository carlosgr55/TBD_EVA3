delimiter $$

create function esPar(n int)
returns varchar(30) deterministic

begin
	declare resu varchar(30);
	if mod(n, 2) = 0 then set resu = 'es par!!';
    else set resu = 'es impar!!';
    end if;
	return resu;
end$$
delimiter ;


