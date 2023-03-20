class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :size
      t.string :colour
      t.string :occasion
      t.string :category
      t.string :type
      t.string :brand
      t.string :condition
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
