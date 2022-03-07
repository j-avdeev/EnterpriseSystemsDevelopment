package com.company.bookshop.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Table(name = "BOOKSHOP_BOOK", indexes = {
        @Index(name = "IDX_BOOKSHOP_BOOK_NAME", columnList = "BOOK_NAME")
})
@Entity(name = "bookshop_Book")
@NamePattern("%s %s|author,bookName")
public class Book extends StandardEntity {
    private static final long serialVersionUID = -1135908409208393410L;

    @NotNull
    @Column(name = "AUTHOR", nullable = false)
    private String author;

    @NotNull
    @Column(name = "BOOK_NAME", nullable = false)
    private String bookName;

    @NotNull
    @Column(name = "PRICE", nullable = false)
    private Integer price;

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }
}