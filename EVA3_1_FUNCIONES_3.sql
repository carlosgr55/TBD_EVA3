DELIMITER $$
create function sumar_numeros(num int, num2 int)
returns int deterministic
begin
    declare suma int;
    set suma = num + num2;
    return suma;
end$$
DELIMITER ;