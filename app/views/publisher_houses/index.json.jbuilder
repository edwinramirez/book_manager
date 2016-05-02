json.array!(@publisher_houses) do |publisher_house|
  json.extract! publisher_house, :id, :name
  json.url publisher_house_url(publisher_house, format: :json)
end
