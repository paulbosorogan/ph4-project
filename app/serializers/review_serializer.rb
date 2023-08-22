class ReviewSerializer < ActiveModel::Serializer
  attributes :comment, :username 

  has_one :movie 
  has_one :user
end
