json.extract! resource, :id, :name, :url, :description, :rank, :comment_ids, :created_at, :updated_at
json.url resource_url(resource, format: :json)
