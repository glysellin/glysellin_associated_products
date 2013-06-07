class CreateGlysellinAssociatedProductsProductAssociations < ActiveRecord::Migration
  def up
    create_table :glysellin_associated_products_product_associations do |t|
      t.integer :position

      t.timestamps
    end
  end

  def down
    drop_table :glysellin_associated_products_product_associations
  end
end
