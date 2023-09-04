class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :username

  has_one :movie 
  has_one :user

end
