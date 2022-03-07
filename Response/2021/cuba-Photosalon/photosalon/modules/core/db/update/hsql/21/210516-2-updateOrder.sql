alter table PHOTOSALON_ORDER alter column CUSTOMER_INFO rename to CUSTOMER_INFO__U27775 ^
alter table PHOTOSALON_ORDER alter column CUSTOMER_INFO__U27775 set null ;
alter table PHOTOSALON_ORDER add column CUSTOMER_INFO_ID varchar(36) ;
