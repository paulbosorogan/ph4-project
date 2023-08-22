class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :runtime, :director, :starring, :short, :image_url, :trailer, :genre

  has_many :reviews
end