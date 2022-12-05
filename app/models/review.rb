class Review < ApplicationRecord
  belongs_to :hub
  belongs_to :user
end
