class EventParticipation < ActiveRecord::Base
  belongs_to :participatory_event, :class_name => 'Event'
  belongs_to :participant_user, :class_name => 'User'
end
