drop database tea;
create database tea;
use tea;



create table indent(
	id int primary key auto_increment,
	name char(20)  not null,
	size enum('小杯','中杯','大杯'),
	sugar enum('糖','半糖','少糖','无糖'),
	oC enum('加冰','常温','热'),
	dosings set('红豆','牛奶','抹茶','葡萄干','珍珠'),
	finish int default 0
);


insert into indent(name, size, sugar, oC, dosings, finish) values('红茶', 2, 2, 2, 7, 0);
insert into indent(name, size, sugar, oC, dosings, finish) values('柠檬茶', 1, 1, 1, 16, 0);
insert into indent(name, size, sugar, oC, dosings, finish) values('绿茶', 3, 3, 3, 8, 0);
insert into indent(name, size, sugar, oC, dosings, finish) values('黄茶', 3, 3, 3, 3, 0);
insert into indent(name, size, sugar, oC, dosings, finish) values('黄茶', 3, 3, 3, 3, 1);
insert into indent(name, size, sugar, oC, dosings, finish) values('绿茶', 3, 3, 3, 16, 1);
