class UserWithHubsSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest
  has_many :hubs
end
