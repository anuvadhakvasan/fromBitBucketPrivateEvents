class CreateEventParticipations < ActiveRecord::Migration
  def change
    create_table :event_participations do |t|
      t.references :participatory_event, index: true, foreign_key: true
      t.references :participant_user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
