class Request < ApplicationRecord
  belongs_to :user
  STATUSES = ["Open", "Item Requested", "Closed"]

  validates :title, presence: true, length: { maximum: 20 }
  validates :description, presence: true, length: { maximum: 150 }
  validates :status, presence: true, inclusion: { in: STATUSES }


end
