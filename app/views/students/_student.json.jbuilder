json.extract! student, :id, :name, :age, :class, :created_at, :updated_at
json.url student_url(student, format: :json)
