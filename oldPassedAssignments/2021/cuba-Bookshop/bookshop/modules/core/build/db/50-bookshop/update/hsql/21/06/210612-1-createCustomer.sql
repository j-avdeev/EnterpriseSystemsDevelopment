create table BOOKSHOP_CUSTOMER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    SURNAME varchar(255) not null,
    AGE integer not null,
    EMAIL varchar(255) not null,
    PAYMENT_INFO varchar(255) not null,
    PHONE_NUMBER varchar(255),
    --
    primary key (ID)
);