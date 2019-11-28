
CREATE TABLE sales (
    visit_id INT,
    first_name VARCHAR (50)NULL,
    last_name VARCHAR (50)  NULL,
    visited_at DATETIME,
    phone VARCHAR(20),
    store_id INT NOT NULL 
);
alter table sales add  store_id int

alter table sales alter column visit_id INT  not null

alter table sales add constraint store_id_pk primary key(store_id)

alter table sales alter column first_name VARCHAR(50) not null

alter table sales alter column last_name VARCHAR(50) not null

alter table sales drop column store_id 

alter table sales drop constraint visit_id_pk

alter table sales add constraint visit_id_unique unique(phone) --------------> -- only one unique key in a table not more than 1

alter table sales add constraint visit_id_fk  foreign key(EmpID)references Employeestable(EmpID)

CREATE TABLE sales_Visit (
    visit_id INT,
    first_name VARCHAR (50)NULL,
    last_name VARCHAR (50)  NULL,
    visited_at DATETIME,
    phone VARCHAR(20),
    store_id INT NOT NULL foreign key(visit_id)references sales(visit_id)

);


alter table sales add constraint store_id_fk foreign key(store_id) references sales_Visit (store_id)

alter table sales_Visit add constraint store_id_pk  primary key(store_id)