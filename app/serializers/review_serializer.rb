class ReviewSerializer < ActiveModel::Serializer
  belongs_to :hub
  belongs_to :user
end
