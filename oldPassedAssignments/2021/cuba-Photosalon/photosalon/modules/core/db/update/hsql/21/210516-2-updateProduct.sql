alter table PHOTOSALON_PRODUCT alter column VOLUME rename to VOLUME__U27170 ^
alter table PHOTOSALON_PRODUCT alter column VOLUME__U27170 set null ;
alter table PHOTOSALON_PRODUCT add column VOLUME integer ^
update PHOTOSALON_PRODUCT set VOLUME = 0 where VOLUME is null ;
alter table PHOTOSALON_PRODUCT alter column VOLUME set not null ;
