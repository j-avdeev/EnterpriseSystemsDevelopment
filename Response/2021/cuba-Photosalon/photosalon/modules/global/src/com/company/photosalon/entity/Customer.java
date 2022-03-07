package com.company.photosalon.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

@Table(name = "PHOTOSALON_CUSTOMER")
@Entity(name = "photosalon_Customer")
@NamePattern("%s|custName")
public class Customer extends StandardEntity {
    private static final long serialVersionUID = -4865891712485502792L;

    @Column(name = "CUST_NAME", nullable = false)
    @NotNull
    private String custName;

    @Column(name = "ADDRES", nullable = false)
    @NotNull
    private String addres;

    @Column(name = "EMAIL", nullable = false, unique = true)
    @NotNull
    @Email
    private String email;

    @Column(name = "CARD_INFO", nullable = false, unique = true)
    @NotNull
    private String cardInfo;

    public String getCardInfo() {
        return cardInfo;
    }

    public void setCardInfo(String cardInfo) {
        this.cardInfo = cardInfo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddres() {
        return addres;
    }

    public void setAddres(String addres) {
        this.addres = addres;
    }

    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }
}