class BeerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  attribute :reviews do |beer|
    ReviewSerializer.new(beer.reviews).as_json["data"]
  end
end
