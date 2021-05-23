class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :beer_id
end
