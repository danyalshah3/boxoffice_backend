class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :poster_img, :imdb_rating
end
