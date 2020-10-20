json.array! @snares do |i|
  json.parent_id i.instrument.id
  json.name i.name
  json.id i.id
  json.category i.category
  json.image_url i.image_url
end
