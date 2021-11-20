class TransationSerializer < ActiveModel::Serializer
  attributes :id, :movie
  # has_one :user
  has_one :movie


 

end
