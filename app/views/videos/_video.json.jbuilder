json.extract! video, :id, :title, :description, :duration, :created_at, :updated_at
json.url video_url(video, format: :json)
