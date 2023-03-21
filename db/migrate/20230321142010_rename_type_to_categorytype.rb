class RenameTypeToCategorytype < ActiveRecord::Migration[7.0]
  def change
    rename_column :items, :type, :category_type
  end
end
