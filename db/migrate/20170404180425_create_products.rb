class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description_en
      t.text :description_pt
      t.text :cover
      t.string :category
      t.boolean :status

      t.timestamps null: false
    end
  end
end
