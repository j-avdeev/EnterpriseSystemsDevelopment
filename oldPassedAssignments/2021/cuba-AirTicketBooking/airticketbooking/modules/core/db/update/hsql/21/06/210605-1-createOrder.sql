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
);