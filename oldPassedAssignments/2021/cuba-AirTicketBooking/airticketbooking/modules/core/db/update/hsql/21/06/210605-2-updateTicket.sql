alter table AIRTICKETBOOKING_TICKET alter column TICKET_TIME rename to TICKET_TIME__U10046 ^
alter table AIRTICKETBOOKING_TICKET alter column TICKET_TIME__U10046 set null ;
alter table AIRTICKETBOOKING_TICKET add column DEPARTURE_TIME time ^
update AIRTICKETBOOKING_TICKET set DEPARTURE_TIME = current_time where DEPARTURE_TIME is null ;
alter table AIRTICKETBOOKING_TICKET alter column DEPARTURE_TIME set not null ;
alter table AIRTICKETBOOKING_TICKET add column ARRIVAL_TIME time ;
