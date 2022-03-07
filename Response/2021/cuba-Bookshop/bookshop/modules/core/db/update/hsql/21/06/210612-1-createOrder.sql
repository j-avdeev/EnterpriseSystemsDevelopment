create table BOOKSHOP_ORDER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ORDER_STATUS varchar(255) not null,
    ORDER_CREATED timestamp not null,
    ORDER_PAID timestamp not null,
    CUSTOMER_ID varchar(36) not null,
    --
    primary key (ID)
);