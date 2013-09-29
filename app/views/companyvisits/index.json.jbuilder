json.array!(@companyvisits) do |companyvisit|
  json.extract! companyvisit, :company_id, :on, :description
  json.url companyvisit_url(companyvisit, format: :json)
end
