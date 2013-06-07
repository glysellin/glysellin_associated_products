module GlysellinAssociatedProducts
  class ProductAssociation < ActiveRecord::Base
    belongs_to :referer_product, class_name: "Glysellin::Product"
    belongs_to :associated_product, class_name: "Glysellin::Product"

    attr_accessible :position
  end
end