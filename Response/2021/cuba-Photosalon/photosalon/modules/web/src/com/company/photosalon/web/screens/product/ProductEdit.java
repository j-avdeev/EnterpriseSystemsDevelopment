package com.company.photosalon.web.screens.product;

import com.haulmont.cuba.gui.screen.*;
import com.company.photosalon.entity.Product;

@UiController("photosalon_Product.edit")
@UiDescriptor("product-edit.xml")
@EditedEntityContainer("productDc")
@LoadDataBeforeShow
public class ProductEdit extends StandardEditor<Product> {
}