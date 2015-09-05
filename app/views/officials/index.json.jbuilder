json.array!(@officials) do |official|
  json.extract! official, :id, :first_name, :last_name, :service_years, :work_phone, :cell_phone, :home_phone, :email, :active, :official_id
  json.url official_url(official, format: :json)
end
