class Suggestion < ApplicationRecord
  belongs_to :request
  belongs_to :item
end
