class RemoveCategoryTypeFromItem < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :category_type, :string
  end
end
