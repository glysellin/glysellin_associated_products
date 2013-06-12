# Glysellin Associated Products

Glysellin plugin to add the ability to associate products to others, allowing
you to offer them to customers during their visit.


You can get associated products from a product

```ruby
# Get associated products
Glysellin::Product.find(id).associated_products
```

and render a list of associated products, with following params :
  - product : model that includes acts_as_sellable
  - options : 
    - count : number of associated products fetched (default 3)

```erb
<%= associated_products_for product %>
```

The partial <tt>views/glysellin_asociated_products/shared/_associated_products.html.haml</tt> can be overridden with available locals : 
- products : ActiveRecord::Relation


