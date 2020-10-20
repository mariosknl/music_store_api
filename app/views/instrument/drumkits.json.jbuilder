json.array! @drumkits do |i|
  json.parent_id i.instrument.id
  json.name i.name
  json.image_url i.image_url
end
