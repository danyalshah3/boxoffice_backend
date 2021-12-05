class TransationSerializer < ActiveModel::Serializer
  attributes :id, :movie
  # has_one :user
  # has_one :movie


  # OMDB_API_KEY=bad9a95
  # OMDB_API=http://www.omdbapi.com/?i=tt3896198&apikey=bad9a95

end
