package com.company.bookshop.web.screens.book;

import com.haulmont.cuba.gui.screen.*;
import com.company.bookshop.entity.Book;

@UiController("bookshop_Book.browse")
@UiDescriptor("book-browse.xml")
@LookupComponent("booksTable")
@LoadDataBeforeShow
public class BookBrowse extends StandardLookup<Book> {
}