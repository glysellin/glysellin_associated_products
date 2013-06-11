module GlysellinAssociatedProducts
  module ApplicationHelper
    def associated_products_for product, options={}
      options[:count] ||= 3
      render partial: "glysellin_associated_products/shared/associated_products", 
            locals: { products: product.product.related_products.order('position ASC')[0...options[:count]]}
    end
  end
end
