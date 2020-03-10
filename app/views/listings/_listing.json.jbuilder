json.extract! listing, :id, :Name, :Price, :Description, :parking, :Rooms, :bathrooms, :Town, :Estate, :photo, :contacts, :created_at, :updated_at
json.url listing_url(listing, format: :json)
