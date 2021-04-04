json.extract! student, :id, :name, :age, :phone, :address, :bio, :created_at, :updated_at
json.url student_url(student, format: :json)
