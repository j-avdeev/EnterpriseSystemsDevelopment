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
    VOLUME varchar(255) not null,
    COST integer,
    --
    primary key (ID)
);