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

select * from Leins;
select * from Satisfied_Leins;
/* this is my comment
on multiple lines */

