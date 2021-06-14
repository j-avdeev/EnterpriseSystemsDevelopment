create table LAB6CUBA_CAR (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    MODEL varchar(255) not null,
    EQUIPMENT varchar(255) not null,
    COLOR varchar(255) not null,
    --
    primary key (ID)
);