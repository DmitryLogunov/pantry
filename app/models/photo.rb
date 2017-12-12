class Photo < ApplicationRecord
  has_many :things, primary_key: :thing_id, foreign_key: :id
end
