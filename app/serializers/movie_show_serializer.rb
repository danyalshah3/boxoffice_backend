class MovieShowSerializer < ActiveModel::Serializer
    attributes :id, :title, :released, :genre, :poster_img, :imdb_rating, :runtime, :director, :writer, :actor, :plot, :language, :awards, :box_office, :trailer
  end