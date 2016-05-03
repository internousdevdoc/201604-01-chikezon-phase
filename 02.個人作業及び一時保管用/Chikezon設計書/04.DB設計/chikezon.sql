

-- chikezon �f�[�^�x�[�X���쐬
drop database if exists chikezon;
create database if not Exists chikezon;
use chikezon;


-- goods�e�[�u���쐬
create table goods(
goods_id int(100) primary key auto_increment,
goods_name varchar(255) not null,
price int,
index(goods_id)
);




-- customer_info�e�[�u���쐬
create table customer_info(
customer_id int(100) primary key auto_increment,
customer_name varchar(255) not null,
postcode varchar(255) not null,
address varchar(255) not null,
telnumber varchar(12) not null,
mailad varchar(255) unique not null,
customer_pass varchar(255) not null,
index(customer_id)
);


-- order_info�e�[�u���쐬
create table order_info(
customer_id int(100),
goods_id int(100),
order_count int(100) default 0,
total_amount int,
purchaseday timestamp default current_timestamp,
foreign key(customer_id) references customer_info(customer_id),
foreign key(goods_id) references goods(goods_id)
);



-- cart�e�[�u���쐬

CREATE TABLE cart(
session_ID VARCHAR(255) NOT NULL,
goods_name VARCHAR(255) NOT NULL,
sales_number INT(100) NOT NULL,
price INT NULL,
total_amount INT NOT NULL
);


-- goods �e�[�u���T���v���}�� --
insert into goods(goods_id,goods_name,price)values(1,"���������`�P�b�g",1500);
insert into goods(goods_id,goods_name,price)values(2,"�f�B�Y�j�[�����h�`�P�b�g",10000000);
insert into goods(goods_id,goods_name,price)values(3,"AKB����`�P�b�g",3000);
insert into goods(goods_id,goods_name,price)values(4,"���E������s��",200000);
insert into goods(goods_id,goods_name,price)values(5,"�Ⴉ���̌��`�P�b�g",5000);
insert into goods(goods_id,goods_name,price)values(6,"���c����݂��o���`�P�b�g",20);
insert into goods(goods_id,goods_name,price)values(7,"���c����Ɖf������ɍs���`�P�b�g",10);
insert into goods(goods_id,goods_name,price)values(8,"�ؑ��J�G���R���T�[�g�`�P�b�g",100);
insert into goods(goods_id,goods_name,price)values(9,"���Ȃ����[�ʐ^�B�e�`�P�b�g",0);
insert into goods(goods_id,goods_name,price)values(10,"10��!!PIG�󂭂�",10000);


