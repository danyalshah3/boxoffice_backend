module Types
  class TransationType < Types::BaseObject
    field :id, ID, null: false
    field :movie, MOVIETYPE, null: true
    field :user_id, Integer, null: false
    field :movie_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
