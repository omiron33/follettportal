class Store < ApplicationRecord
  belongs_to :region
  has_many :users
  has_many :events
end
