delimiter $$
create procedure doomsday()
begin
	declare terminar int default false;

	declare id int;
    declare hire date;
    declare id_job varchar(10);
    declare id_dep int;
	declare datos_empleados cursor for
	select employee_id, hire_date, job_id, department_id from employees;

    declare continue handler for not found set terminar = true;
    
    open datos_empleados;
    
    obt_datos: loop
		fetch datos_empleados into id,hire,id_job, id_dep;        
        if terminar then
			leave obt_datos;
		end if;
        insert into job_history
			(employee_id, start_date, end_date, job_id,department_id)
			value
			(id, hire, curdate(), id_job, id_dep);
    end loop obt_datos;
	
    
end$$

delimiter ;