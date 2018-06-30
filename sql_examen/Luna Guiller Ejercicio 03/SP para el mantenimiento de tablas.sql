use guardería
select * from Niño
select * from Familiar
select * from Menús
select * from Platos
select * from Ingredientes

select * from Abonador
select * from Asistencia

create  procedure addData
as
begin

insert into Niño values('N001','Luis','3/17/1999','2/4/2005','2/4/2010','F001')
insert into Niño values('N002','Bemdi','3/17/1999','2/4/2005','2/4/2010','F003')
insert into Niño values('N003','martin','3/17/1999','2/4/2005','2/4/2010','F002')

insert into Familiar values('F001',70748551,'Predro','Lima',959185144)
insert into Familiar values('F002',86948551,'Julio','Cañete',955935144)
insert into Familiar values('F003',85948551,'Diego','Cañete',934935144)


insert into Ingredientes values ('I001','arroz,Pollo,cebollas,ajos,aceite,tomates',20)
insert into Platos values ('P001','arroz con pollo','I001')

insert into Ingredientes values ('I002','fideos,Pollo,cebollas,ajos,aceite,tomates',12)
insert into Platos values ('P002','Sopa','I002')

insert into Menús values ('M001','P002',32)

insert into Abonador values('A001','mozo','lima',938472758,9583749)

insert into Asistencia values('2/4/2007','N002','SI','A001','M001', 'I001',32)
end