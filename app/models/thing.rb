class Thing < ApplicationRecord
  has_one :category, primary_key: :category_id, foreign_key: :id
  has_one :owner,  primary_key: :owner_id, foreign_key: :id
  has_one :storage,  primary_key: :storage_id, foreign_key: :id
  has_many :tags, primary_key: :id, foreign_key: :thing_id
  has_many :photos, primary_key: :id, foreign_key: :thing_id
  has_many :tag_titles, through: :tags

  def self.all_with_relations
    joins('LEFT JOIN categories c ON c.id = things.category_id')
    .joins('LEFT JOIN owners o ON o.id = things.owner_id')
    .joins('LEFT JOIN storages s ON s.id = things.storage_id')
    .select('things.*, c.title as category_title, o.name as owner_name, s.title as storage_title')
    .all
  end
end
