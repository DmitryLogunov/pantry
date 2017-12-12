class Category < ApplicationRecord
  has_many :things, primary_key: :id, foreign_key: :category_id
end
