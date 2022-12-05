class User < ApplicationRecord
  has_many:reviews
  has_many:hubs,through: :reviews

  has_secure_password
end
