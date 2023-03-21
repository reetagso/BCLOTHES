class Item < ApplicationRecord
  COLOURS = %w[Multi Black White Green Pink Blue Red Brown Yellow Orange Purple Navy Grey Gold Silver]
  OCCASIONS = %w[Wedding]
  # CATEGORIES = %w[Clothing Accessories]
  CATEGORY_TYPES = %w[Coats Jackets Knitwear Dresses Tracksuits Tops Shirts Shorts Trousers Denim Sportswear Suits Skirt Bag Shoes Jewellery]
  CONDITIONS = ["Past its best", "Used but good", "Like new"]
  belongs_to :user
  validates_presence_of :size, :colour, :occasion, :category, :category_type, :brand, :condition, :description
  validates :colour, inclusion: { in: COLOURS }
  validates :category_type, inclusion: { in: CATEGORY_TYPES }
  validates :condition, inclusion: { in: CONDITIONS }

end
