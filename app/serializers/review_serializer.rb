class ReviewSerializer < ActiveModel::Serializer
  attributes :comment 

  has_one :movie 
  has_one :user
end
