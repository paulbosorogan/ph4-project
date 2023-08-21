class MovieSerializer < ActiveModel::Serializer
  attributes :title, :year, :runtime, :director, :starring, :short, :image_url, :trailer, :genre
end
