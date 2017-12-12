class Tag < ApplicationRecord
  belongs_to :tag_title, primary_key: :id, foreign_key: :tag_id
  has_many :things, primary_key: :thing_id, foreign_key: :id
end
