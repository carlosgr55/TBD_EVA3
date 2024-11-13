delimiter $$
create procedure consultar_empleado(id_empleado decimal(6,0))

begin
	select * from employees where employee_id = id_empleado;
end$$


delimiter ;