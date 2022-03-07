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
);