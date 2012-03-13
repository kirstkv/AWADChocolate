class CreateItems < ActiveRecord::Migration
  def change
    drop table if exists :items;
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price
      t.date :date_available
      t.timestamps
    end
  end
end
