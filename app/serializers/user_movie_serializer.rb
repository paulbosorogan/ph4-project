class UserMovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :director, :image_url

end
