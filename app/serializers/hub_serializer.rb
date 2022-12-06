class HubSerializer < ActiveModel::Serializer
  attributes :id ,:name, :location, :website_url,:description, :founder
end
