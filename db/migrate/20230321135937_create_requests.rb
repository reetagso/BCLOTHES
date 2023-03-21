class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :status
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.references :item, null: true, foreign_key: true

      t.timestamps
    end
  end
end
