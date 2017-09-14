# json.extract! @guest, :id, :name, :age, :favorite_color, :gifts

json.partial! './api/guests/guest', guest: @guest
json.gifts do
  json.array! @guest.gifts do |gift|
    json.title gift.title
    json.description gift.description
  end
end

# Better, refactored way
json.gifts @guest.gifts, partial: './api/gifts/gift', as: :gift
