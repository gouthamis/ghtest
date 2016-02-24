json.array!(@package_descriptions) do |package_description|
  json.extract! package_description, :id, :package_number
  json.url package_description_url(package_description, format: :json)
end
