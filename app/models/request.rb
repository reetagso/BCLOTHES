class Request < ApplicationRecord
  belongs_to :user
  has_many :suggestions
  # belongs_to :item
  STATUSES = ["Open", "Item Requested", "Closed"]

  validates :title, presence: true, length: { maximum: 20 }
  validates :description, presence: true, length: { maximum: 200 }
  validates :status, presence: true, inclusion: { in: STATUSES }


end
