DELIMITER $$

create function comparar_numeros(a int, b int)
returns varchar(30) deterministic

begin
	declare resu varchar(30);
    
    if a > b then set resu = 'es mayor que';
    elseif b = a then set resu = 'es igual que';
    else
		set resu = 'es menor que';
	end if;
	
    return concat(a, ' ',resu, ' ',b);
end$$
DELIMITER ;
