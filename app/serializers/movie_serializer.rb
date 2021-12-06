class MovieSerializer < ActiveModel::Serializer
  attributes :id, :poster_img, :title
  # has_many :transations
 
end
