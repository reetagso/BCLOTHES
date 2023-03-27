class Request < ApplicationRecord
  belongs_to :user
  belongs_to :item, optional: true
  has_many :suggestions, dependent: :destroy
  has_many :items, through: :suggestions
  # belongs_to :item
  STATUSES = ["Open", "Item Requested", "Closed"]

  validates :title, presence: true, length: { maximum: 20 }
  validates :description, presence: true, length: { maximum: 200 }
  validates :status, presence: true, inclusion: { in: STATUSES }
  validates :start_date, presence: true
  validates :end_date, presence: true


end
