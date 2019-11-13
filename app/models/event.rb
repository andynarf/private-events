class Event < ApplicationRecord

    scope :past, -> { where('date <= ?', Date.today) }
    scope :upcoming, -> { where('date >= ?', Date.today) }

    belongs_to :creator , foreign_key: :creator_id, class_name: 'User'
    has_many :event_authoring , foreign_key: :attended_event_id
    has_many :attendees, :through => :event_authoring, :source => :event_attendee

    
end