package com.company.bookshop.web.screens.book;

import com.haulmont.cuba.gui.screen.*;
import com.company.bookshop.entity.Book;

@UiController("bookshop_Book.edit")
@UiDescriptor("book-edit.xml")
@EditedEntityContainer("bookDc")
@LoadDataBeforeShow
public class BookEdit extends StandardEditor<Book> {
}