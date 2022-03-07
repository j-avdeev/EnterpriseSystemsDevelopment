package com.company.bookshop.web.screens.cart;

import com.haulmont.cuba.gui.screen.*;
import com.company.bookshop.entity.Cart;

@UiController("bookshop_Cart.edit")
@UiDescriptor("cart-edit.xml")
@EditedEntityContainer("cartDc")
@LoadDataBeforeShow
public class CartEdit extends StandardEditor<Cart> {
}