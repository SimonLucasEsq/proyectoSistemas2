json.extract! manager, :id, :name, :description, :place, :email, :phone, :created_at, :updated_at
json.url manager_url(manager, format: :json)
