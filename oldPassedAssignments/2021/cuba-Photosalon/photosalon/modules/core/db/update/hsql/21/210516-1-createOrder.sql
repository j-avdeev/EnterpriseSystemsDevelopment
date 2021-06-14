create table PHOTOSALON_ORDER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ORDER_INFO varchar(255) not null,
    DELIVERY_INFO varchar(255) not null,
    CUSTOMER_INFO varchar(255) not null,
    TRANSACTION_INFO varchar(255) not null,
    --
    primary key (ID)
);