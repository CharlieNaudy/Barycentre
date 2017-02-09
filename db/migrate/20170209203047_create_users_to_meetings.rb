class CreateUsersToMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :users_to_meetings do |t|
      t.belongs_to :meeting, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
