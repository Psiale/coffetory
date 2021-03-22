class DropProductRawMaterials < ActiveRecord::Migration[6.0]
  def change
    drop_table :products_raw_materials
    drop_table :products 
  end
end
