json.extract! controller, :id, :StaticPages, :home, :help, :created_at, :updated_at
json.url controller_url(controller, format: :json)
