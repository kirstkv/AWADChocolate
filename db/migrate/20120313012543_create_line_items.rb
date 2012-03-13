class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.decimal :unit_price
      t.references :item 
      t.date :delivery_date

      t.timestamps
    end
  end
end
