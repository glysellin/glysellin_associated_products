module GlysellinAssociatedProducts
  module Model
    extend ActiveSupport::Concern
    included do
      has_many :product_associations, class_name: "GlysellinAssociatedProducts::ProductAssociation"
      has_many :associated_products, through: :product_associations
      has_many :referer_products, through: :product_associations

      accepts_nested_attributes_for :product_associations, allow_destroy: true
      attr_accessible :product_associations_attributes, :product_associations
    end
  end
end