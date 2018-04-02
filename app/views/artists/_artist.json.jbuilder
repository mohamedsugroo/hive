json.extract! artist, :id, :first_name, :last_name, :stage_name, :birth_place, :birth_date, :bio, :active_status, :active_from, :active_to, :created_at, :updated_at
json.url artist_url(artist, format: :json)
