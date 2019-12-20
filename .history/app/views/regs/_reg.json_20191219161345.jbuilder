json.extract! reg, :id, :comp_id, :comp_name, :service, :email, :contact :created_at, :updated_at
json.url reg_url(reg, format: :json)
