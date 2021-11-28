module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :movies, [MovieType], null: false, description: "A list of movies" do
      argument :title, String, required: false
    def movies(title: nill)
     Movie.search(title)
    end
  end
 end
end
