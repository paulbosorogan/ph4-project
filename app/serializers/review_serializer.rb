class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :username, :movie_id, :user_id

  has_one :movie 
  has_one :user

end
