json.extract! comment, :id, :video_id, :user_id, :body, :current_duration, :created_at, :updated_at
json.url comment_url(comment, format: :json)
