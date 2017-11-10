json.extract! student, :id, :name, :lastname, :email, :ci, :hours, :career_id, :created_at, :updated_at
json.url student_url(student, format: :json)
