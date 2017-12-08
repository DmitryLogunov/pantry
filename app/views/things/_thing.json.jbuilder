json.extract! thing, :id, :title, :description, :category_id, :storage_id, :storage_detailed_info, :owner_id, :last_inspect_date, :expire_date, :created_at, :updated_at
json.url thing_url(thing, format: :json)
