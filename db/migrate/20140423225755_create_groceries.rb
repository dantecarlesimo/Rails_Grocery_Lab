class CreateGroceries < ActiveRecord::Migration
  def change
    create_table :groceries do |t|
      t.string :item
      t.integer :quantity
      t.text :description

      t.timestamps
    end
  end
end
