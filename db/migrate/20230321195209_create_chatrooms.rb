class CreateChatrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.references :request, null: false, foreign_key: true

      t.timestamps
    end
  end
end
