class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.string :title
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
