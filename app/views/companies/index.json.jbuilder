json.array!(@companies) do |company|
  json.extract! company, :name, :address, :contact_person, :contact_addr
  json.url company_url(company, format: :json)
end
