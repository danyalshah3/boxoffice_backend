class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :poster_img
  # has_many :transations
 
end
