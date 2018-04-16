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

insert into Commodity values(2,'极米蓝牙游戏手柄','智能锂电池',199)

insert into Commodity values(2,'极米K歌无线麦克风C2','拉式电池仓',569)

insert into Commodity values(2,'极米液晶快门式3D眼镜','高容量充电电池',198)

create table Brand
(
  brandNameID int primary key identity(1,1), 
  brandName nvarchar(16),
)
insert into Brand values('小米')
insert into Brand values('极米')
insert into Brand values('华为')
insert into Brand values('iPhone')
insert into Brand values('oppo')
insert into Brand values('vivo')

select * from Brand order by brandName collate Chinese_PRC_CS_AS_KS_WS	--拼音字母排序

--select * from Commodity join inner \

--存储过程
create proc proc_comdBrand
as
select * from Commodity inner join Brand on Commodity.brandNameID=Brand.brandNameID--多表连接查询

exec proc_comdBrand


