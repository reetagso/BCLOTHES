class ChangeStatusDefaultRequests < ActiveRecord::Migration[7.0]
  def change
    change_column_default :requests, :status, "Pending"
  end
end
