class UserSerializer < ActiveModel::Serializer
  attributes :username

  has_many :reviews
end
