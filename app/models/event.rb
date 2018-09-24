class Event < ApplicationRecord
  belongs_to :user
  belongs_to :store

  def all_event_types
    Event.group('category').count('category')

  end
end
