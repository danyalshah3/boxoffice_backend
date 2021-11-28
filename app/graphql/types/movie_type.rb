module Types
  class MovieType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :year, String, null: true
    field :rated, String, null: true
    field :released, String, null: true
    field :runtime, String, null: true
    field :genre, String, null: true
    field :director, String, null: true
    field :writer, String, null: true
    field :actor, String, null: true
    field :plot, String, null: true
    field :language, String, null: true
    field :awards, String, null: true
    field :poster_img, String, null: true
    field :imdb_rating, String, null: true
    field :production, String, null: true
    field :box_office, String, null: true
    field :trailer, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
