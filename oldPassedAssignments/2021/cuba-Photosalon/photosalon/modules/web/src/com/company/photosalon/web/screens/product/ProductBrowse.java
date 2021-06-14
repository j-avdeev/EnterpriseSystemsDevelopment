package com.company.photosalon.web.screens.product;

import com.haulmont.cuba.gui.screen.*;
import com.company.photosalon.entity.Product;

@UiController("photosalon_Product.browse")
@UiDescriptor("product-browse.xml")
@LookupComponent("productsTable")
@LoadDataBeforeShow
public class ProductBrowse extends StandardLookup<Product> {
}