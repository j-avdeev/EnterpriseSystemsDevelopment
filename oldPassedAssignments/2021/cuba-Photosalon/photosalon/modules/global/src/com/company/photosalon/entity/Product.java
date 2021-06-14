package com.company.photosalon.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "PHOTOSALON_PRODUCT")
@Entity(name = "photosalon_Product")
public class Product extends StandardEntity {
    private static final long serialVersionUID = 8404354992388243925L;

    @Column(name = "PRODUCT_ID", nullable = false, unique = true)
    @NotNull
    private String productID;

    @Column(name = "PROD_NAME", unique = true)
    private String prodName;

    @Column(name = "VOLUME", nullable = false)
    @NotNull
    private Integer volume;

    @Column(name = "COST")
    private Integer cost;

    public void setVolume(Integer volume) {
        this.volume = volume;
    }

    public Integer getVolume() {
        return volume;
    }

    public void setCost(Integer cost) {
        this.cost = cost;
    }

    public Integer getCost() {
        return cost;
    }

    public String getProdName() {
        return prodName;
    }

    public void setProdName(String prodName) {
        this.prodName = prodName;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }
}