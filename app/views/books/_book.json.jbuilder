json.extract! book, :id, :name, :description, :book_type, :created_at, :updated_at
json.url book_url(book, format: :json)
