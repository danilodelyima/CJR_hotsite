json.extract! candidate, :id, :name, :email, :cell_phone, :course, :semester, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)