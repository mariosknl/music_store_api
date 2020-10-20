json.array! @bassGuitars do |i|
  json.parent_id i.instrument.id
  json.name i.name
  json.id i.id
  json.strings i.strings
  json.image_url i.image_url
end
