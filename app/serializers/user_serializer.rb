class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :creditcardnum, :password_digest
end
