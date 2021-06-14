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
);