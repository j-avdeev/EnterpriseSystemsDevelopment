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
);