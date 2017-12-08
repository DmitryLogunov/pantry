json.extract! photo, :id, :thing_id, :path, :created_at, :updated_at
json.url photo_url(photo, format: :json)
