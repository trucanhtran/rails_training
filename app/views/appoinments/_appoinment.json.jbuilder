json.extract! appoinment, :id, :date, :room, :created_at, :updated_at
json.url appoinment_url(appoinment, format: :json)
