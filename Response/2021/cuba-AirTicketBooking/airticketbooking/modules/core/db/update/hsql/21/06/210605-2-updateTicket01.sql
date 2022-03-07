alter table AIRTICKETBOOKING_TICKET alter column DEPARTURE_TIME rename to DEPARTURE_TIME__U48671 ^
alter table AIRTICKETBOOKING_TICKET alter column DEPARTURE_TIME__U48671 set null ;
alter table AIRTICKETBOOKING_TICKET alter column ARRIVAL_TIME rename to ARRIVAL_TIME__U80091 ^
alter table AIRTICKETBOOKING_TICKET add column TICKET_TIME time ^
update AIRTICKETBOOKING_TICKET set TICKET_TIME = current_time where TICKET_TIME is null ;
alter table AIRTICKETBOOKING_TICKET alter column TICKET_TIME set not null ;
