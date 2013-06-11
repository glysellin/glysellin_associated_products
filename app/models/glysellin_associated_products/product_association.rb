module GlysellinAssociatedProducts
  class ProductAssociation < ActiveRecord::Base
    self.table_name = 'glysellin_product_associations'

    belongs_to :referer_product, class_name: "Glysellin::Product"
    belongs_to :associated_product, class_name: "Glysellin::Product"

    attr_accessible :position, :referer_product, :referer_product_id, :associated_product, :associated_product_id
    scope :ordered, order("position ASC") 
  end
end