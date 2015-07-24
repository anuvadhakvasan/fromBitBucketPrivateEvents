class User < ActiveRecord::Base
  has_many :events, :foreign_key => :creator_id
  has_many :event_participations, :foreign_key => :participant_user_id
  has_many :participatory_events, :through => :event_participations
end
