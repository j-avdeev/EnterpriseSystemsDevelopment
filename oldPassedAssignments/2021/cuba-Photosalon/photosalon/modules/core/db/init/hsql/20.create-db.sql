-- begin PHOTOSALON_CUSTOMER
create unique index IDX_PHOTOSALON_CUSTOMER_UNIQ_EMAIL on PHOTOSALON_CUSTOMER (EMAIL)^
create unique index IDX_PHOTOSALON_CUSTOMER_UNIQ_CARD_INFO on PHOTOSALON_CUSTOMER (CARD_INFO)^
-- end PHOTOSALON_CUSTOMER
-- begin PHOTOSALON_PRODUCT
create unique index IDX_PHOTOSALON_PRODUCT_UNIQ_PRODUCT_ID on PHOTOSALON_PRODUCT (PRODUCT_ID)^
create unique index IDX_PHOTOSALON_PRODUCT_UNIQ_PROD_NAME on PHOTOSALON_PRODUCT (PROD_NAME)^
-- end PHOTOSALON_PRODUCT
-- begin PHOTOSALON_ORDER_LINE
alter table PHOTOSALON_ORDER_LINE add constraint FK_PHOTOSALON_ORDER_LINE_ON_ORDER foreign key (ORDER_ID) references PHOTOSALON_ORDER(ID)^
alter table PHOTOSALON_ORDER_LINE add constraint FK_PHOTOSALON_ORDER_LINE_ON_PRODUCT foreign key (PRODUCT_ID) references PHOTOSALON_PRODUCT(ID)^
create index IDX_PHOTOSALON_ORDER_LINE_ON_ORDER on PHOTOSALON_ORDER_LINE (ORDER_ID)^
create index IDX_PHOTOSALON_ORDER_LINE_ON_PRODUCT on PHOTOSALON_ORDER_LINE (PRODUCT_ID)^
-- end PHOTOSALON_ORDER_LINE
-- begin PHOTOSALON_ORDER
alter table PHOTOSALON_ORDER add constraint FK_PHOTOSALON_ORDER_ON_CUSTOMER_INFO foreign key (CUSTOMER_INFO_ID) references PHOTOSALON_CUSTOMER(ID)^
create index IDX_PHOTOSALON_ORDER_ON_CUSTOMER_INFO on PHOTOSALON_ORDER (CUSTOMER_INFO_ID)^
-- end PHOTOSALON_ORDER
