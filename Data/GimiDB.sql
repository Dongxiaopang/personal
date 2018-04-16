use master
go 
create database GimiDB
go 
use GimiDB
go
create table Commodity
(
  ID int primary key identity(1,1),
  brandNameID int foreign key references Brand(brandNameID) not null,
  Name nvarchar(16) not null unique,
  Powersupplymode nvarchar(20)not null,
  Price money check(Price>0) not null
)
select * from Commodity

insert into Commodity values(2,'����������Ϸ�ֱ�','����﮵��',199)

insert into Commodity values(2,'����K��������˷�C2','��ʽ��ز�',569)

insert into Commodity values(2,'����Һ������ʽ3D�۾�','�����������',198)

create table Brand
(
  brandNameID int primary key identity(1,1), 
  brandName nvarchar(16),
)
insert into Brand values('С��')
insert into Brand values('����')
insert into Brand values('��Ϊ')
insert into Brand values('iPhone')
insert into Brand values('oppo')
insert into Brand values('vivo')

select * from Brand order by brandName collate Chinese_PRC_CS_AS_KS_WS	--ƴ����ĸ����

--select * from Commodity join inner \

--�洢����
create proc proc_comdBrand
as
select * from Commodity inner join Brand on Commodity.brandNameID=Brand.brandNameID--������Ӳ�ѯ

exec proc_comdBrand


