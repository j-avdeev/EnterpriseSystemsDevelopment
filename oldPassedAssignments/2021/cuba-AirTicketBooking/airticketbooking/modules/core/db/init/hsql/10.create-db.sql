-- begin AIRTICKETBOOKING_TICKET
create table AIRTICKETBOOKING_TICKET (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TICKET_NAME varchar(255) not null,
    PLACE integer,
    TICKET_ID varchar(255) not null,
    AIRPLANE_ID integer,
    TICKET_TIME time not null,
    COST integer,
    --
    primary key (ID)
)^
-- end AIRTICKETBOOKING_TICKET
-- begin AIRTICKETBOOKING_ORDER
create table AIRTICKETBOOKING_ORDER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    PASSANGER_ID varchar(36),
    TICKET_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end AIRTICKETBOOKING_ORDER
-- begin AIRTICKETBOOKING_PASSANGER
create table AIRTICKETBOOKING_PASSANGER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    EMAIL varchar(255) not null,
    PASSENGER_NAME varchar(255),
    CARD_INFO varchar(255),
    PASSENGER_ID varchar(255) not null,
    --
    primary key (ID)
)^
-- end AIRTICKETBOOKING_PASSANGER
