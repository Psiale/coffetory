class CreateRawMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :raw_materials do |t|
      t.string :name
      t.float :total_amount
      t.float :remaining_amount
      t.references :coffee_shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
