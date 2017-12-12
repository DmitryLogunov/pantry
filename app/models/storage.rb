class Storage < ApplicationRecord
  has_many :things, primary_key: :id, foreign_key: :storage_id
end
