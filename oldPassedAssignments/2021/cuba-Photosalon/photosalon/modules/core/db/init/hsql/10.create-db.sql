-- begin PHOTOSALON_ORDER
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
    CUSTOMER_INFO_ID varchar(36),
    TRANSACTION_INFO varchar(255) not null,
    --
    primary key (ID)
)^
-- end PHOTOSALON_ORDER
-- begin PHOTOSALON_CUSTOMER
create table PHOTOSALON_CUSTOMER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    CUST_NAME varchar(255) not null,
    ADDRES varchar(255) not null,
    EMAIL varchar(255) not null,
    CARD_INFO varchar(255) not null,
    --
    primary key (ID)
)^
-- end PHOTOSALON_CUSTOMER
-- begin PHOTOSALON_PRODUCT
create table PHOTOSALON_PRODUCT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    PRODUCT_ID varchar(255) not null,
    PROD_NAME varchar(255),
    VOLUME integer not null,
    COST integer,
    --
    primary key (ID)
)^
-- end PHOTOSALON_PRODUCT
-- begin PHOTOSALON_ORDER_LINE
create table PHOTOSALON_ORDER_LINE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ORDER_ID varchar(36),
    PRODUCT_ID varchar(36),
    VOLUME decimal(19, 3) not null,
    --
    primary key (ID)
)^
-- end PHOTOSALON_ORDER_LINE
