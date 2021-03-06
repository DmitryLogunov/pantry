class Tag < ApplicationRecord
  has_many :tags, primary_key: :id, foreign_key: :tag_id
  has_many :things, through: :tag_references
end
