create table Leins (
_id int not null,
pin varchar not null,
number int,
total_amount float,
primary key (pin)
);

create table Satisfied_Leins (
_id int not null,
pin varchar,
block_lot varchar,
filing_date varchar,
tax_year int,
dtd varchar,
lien_description varchar,
municipality varchar,
ward float,
last_docket_entry varchar,
amount float,
assignee varchar,
primary key (_id)
);

create table Property_Assessments_Parcel_Data (
_id int not null,
parid varchar not null,
propertyhousenum int,
propertyfraction int,
propertyaddress varchar,
propertycity varchar,
propertystate varchar,
propertyunit varchar,
propertyzip int,
munidesc varchar,
ownerdesc varchar,
class varchar,
classdesc varchar,
usedesc varchar,
primary key (parid)
);

select * from Leins;
select * from Satisfied_Leins;
select * from Property_Assessments_Parcel_Data;