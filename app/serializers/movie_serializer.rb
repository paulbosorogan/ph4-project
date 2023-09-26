class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :runtime, :director, :starring, :short, :trailer, :image_url, :genre

  has_many :reviews
end
