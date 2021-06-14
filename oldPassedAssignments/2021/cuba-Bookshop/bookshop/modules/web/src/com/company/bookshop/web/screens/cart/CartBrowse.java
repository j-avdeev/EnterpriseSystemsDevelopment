package com.company.bookshop.web.screens.cart;

import com.haulmont.cuba.gui.screen.*;
import com.company.bookshop.entity.Cart;

@UiController("bookshop_Cart.browse")
@UiDescriptor("cart-browse.xml")
@LookupComponent("cartsTable")
@LoadDataBeforeShow
public class CartBrowse extends StandardLookup<Cart> {
}