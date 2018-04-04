json.extract! reply, :id, :comment_id, :user_id, :body, :created_at, :updated_at
json.url reply_url(reply, format: :json)
