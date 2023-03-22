class ChangeSizeToIntegersItems < ActiveRecord::Migration[7.0]
  def change
    change_column :items, :size, 'integer USING CAST(size AS integer)'
  end
end
