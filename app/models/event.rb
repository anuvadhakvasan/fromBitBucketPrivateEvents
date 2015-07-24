class Event < ActiveRecord::Base
   belongs_to :creator, :class_name => "User"
   has_many :event_participations, :foreign_key => :participatory_event_id
   has_many :participant_users, :through => :event_participations
    
end
