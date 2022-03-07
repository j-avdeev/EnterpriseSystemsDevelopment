-- begin BOOKSHOP_CART
create table BOOKSHOP_CART (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    BOOK_ID varchar(36),
    CUSTOMER_ID varchar(36),
    ORDER_ID varchar(36) not null,
    QUANTITY integer not null,
    DISCOUNT varchar(255),
    --
    primary key (ID)
)^
-- end BOOKSHOP_CART
-- begin BOOKSHOP_CUSTOMER
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
)^
-- end BOOKSHOP_CUSTOMER
-- begin BOOKSHOP_ORDER
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
)^
-- end BOOKSHOP_ORDER
-- begin BOOKSHOP_BOOK
create table BOOKSHOP_BOOK (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    AUTHOR varchar(255) not null,
    BOOK_NAME varchar(255) not null,
    PRICE integer not null,
    --
    primary key (ID)
)^
-- end BOOKSHOP_BOOK
