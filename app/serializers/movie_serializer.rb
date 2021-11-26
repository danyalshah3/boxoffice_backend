class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :poster_img, :imdb_rating, :runtime
  has_many :transations
 
end
