class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.string :img_url
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
