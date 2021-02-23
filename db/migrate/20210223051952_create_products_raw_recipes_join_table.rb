class CreateProductsRawRecipesJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :products, :raw_materials do |t|
      t.index :product_id
      t.index :raw_material_id
    end
  end
end
