class Owner < ApplicationRecord
  has_many :things, primary_key: :id, foreign_key: :owner_id
end
