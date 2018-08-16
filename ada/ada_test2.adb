with Ada.Text_IO; use Ada.Text_IO;
-- Simple procedure
procedure Ada_Test2 is
	name	:string(1..100);
	last	:natural;
begin
	for i in 1..10 loop
		Put_Line ("HELL!" & name(1..last));
	end loop;
end Ada_Test2;

