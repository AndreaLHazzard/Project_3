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

ALTER TABLE property_assessments_parcel_data
RENAME "parid" TO "Parcel Identification Number";

ALTER TABLE property_assessments_parcel_data
RENAME "propertyhousenum" TO "Street Address Number";

ALTER TABLE property_assessments_parcel_data
RENAME "propertyfraction" TO "Street Address Line 2";

ALTER TABLE property_assessments_parcel_data
RENAME "propertyaddress" TO "Street Name";

ALTER TABLE property_assessments_parcel_data
RENAME "propertycity" TO "City";

ALTER TABLE property_assessments_parcel_data
RENAME "propertystate" TO "State";

ALTER TABLE property_assessments_parcel_data
RENAME "propertyunit" TO "Unit or Apartment Number";

ALTER TABLE property_assessments_parcel_data
RENAME "propertyzip" TO "Zip Code";

ALTER TABLE property_assessments_parcel_data
RENAME "munidesc" TO "Municipality Name";

ALTER TABLE property_assessments_parcel_data
RENAME "ownerdesc" TO "Owner Description";

ALTER TABLE property_assessments_parcel_data
RENAME "class" TO "Class";

ALTER TABLE property_assessments_parcel_data
RENAME "classdesc" TO "Class Description";

ALTER TABLE property_assessments_parcel_data
RENAME "usedesc" TO "Land Use Code Description";

ALTER TABLE leins
RENAME "pin" TO "Parcel Identification Number";

ALTER TABLE leins
RENAME "total_amount" TO "Back Taxes Owed";

ALTER TABLE satisfied_leins
RENAME "pin" TO "Parcel Identification Number";

/* Joins full property assessment table with the liens table
to get all properties with liens. Then join the result with the 
satisfied_liens table to return only those rows NOT on the satisfied_liens
table to identify those parcels that still have liens.
*/

SELECT p.*, l.*
FROM property_assessments_parcel_data p
INNER JOIN leins l USING ("Parcel Identification Number")
LEFT JOIN satisfied_leins s USING ("Parcel Identification Number")
WHERE s."Parcel Identification Number" IS NULL;



select * from Leins;
select * from Satisfied_Leins;
select * from Property_Assessments_Parcel_Data;