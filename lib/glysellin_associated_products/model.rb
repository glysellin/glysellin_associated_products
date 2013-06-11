module GlysellinAssociatedProducts
  module Model
    extend ActiveSupport::Concern
    included do
      has_many :product_associations, class_name: "GlysellinAssociatedProducts::ProductAssociation"
      has_many :associated_products, through: :product_associations, foreign_key: "associated_product_id"
      has_many :referer_products, through: :product_associations, foreign_key: "referer_product_id"

      accepts_nested_attributes_for :product_associations, allow_destroy: true
      attr_accessible :product_associations_attributes, :product_associations, :associated_products

      def related_products 
        self.class.includes(:product_associations).where(
          "glysellin_product_associations.referer_product_id = :id OR glysellin_product_associations.associated_product_id = :id",
          id: id
        )
      end
    end
  end
end