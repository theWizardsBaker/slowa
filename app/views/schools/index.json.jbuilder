json.array!(@schools) do |school|
  json.extract! school, :id, :name, :address_id, :phone, :AD_first_name, :AD_last_name, :AD_phone, :AD_cell, :AD_extension, :AD_email, :coach_first_name, :coach_last_name, :coach_phone, :coach_cell, :coach_extension, :coach_email, :dues_paid, :fees_paid, :active
  json.url school_url(school, format: :json)
end
