json.extract! comment, :id, :body, :user_id, :resource_id, :up, :down, :created_at, :updated_at
json.url comment_url(comment, format: :json)
