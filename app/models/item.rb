class Item < ApplicationRecord
  belongs_to :user
  has_many :suggestions
  has_many :requests, through: :suggestions
  has_many_attached :photos

  COLOURS = %w[Multi Black White Green Pink Blue Red Brown Yellow Orange Purple Navy Grey Gold Silver]
  OCCASIONS = %w[Wedding Festival Workwear Modest Partywear Summer Winter Other]
  CATEGORIES = %w[Coats Jackets Knitwear Dresses Tracksuits Tops Shirts Shorts Trousers Denim Sportswear Suits Skirt Swimwear Bag Shoes Jewellery]
  CONDITIONS = ["Past its best", "Used but good", "Like new"]
  validates_presence_of :size, :colour, :occasion, :category, :brand, :condition, :description, :photos
  validates :colour, inclusion: { in: COLOURS }
  validates :category, inclusion: { in: CATEGORIES }
  validates :condition, inclusion: { in: CONDITIONS }

end
