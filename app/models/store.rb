class Store < ApplicationRecord
  belongs_to :region
  has_many :users
  has_many :events

  def all_event_types
    Event.group('category').count('category')
  end
end
