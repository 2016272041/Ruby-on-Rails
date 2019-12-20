json.extract! register, :id, :companyid, :companyname, :service, :email, :contact, :created_at, :updated_at
json.url register_url(register, format: :json)
