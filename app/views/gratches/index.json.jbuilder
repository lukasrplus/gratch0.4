json.array!(@gratches) do |gratch|
  json.extract! gratch, :id, :host_id, :bro1_id, :bro2_id, :bro3_id, :bro4_id, :datetime, :city, :adress, :zipcode
  json.url gratch_url(gratch, format: :json)
end
