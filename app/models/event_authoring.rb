# frozen_string_literal: true

class EventAuthoring < ApplicationRecord
  belongs_to :event_attendee, class_name: 'User'
  belongs_to :attended_event, class_name: 'Event'
end
