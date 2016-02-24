json.array!(@homes) do |home|
  json.extract! home, :id, :istm_no, :istm_name, :company_name, :date
  json.url home_url(home, format: :json)
end
