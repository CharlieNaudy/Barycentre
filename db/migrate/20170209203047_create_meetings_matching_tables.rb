class CreateMeetingsMatchingTables < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings_matching_tables do |t|
      t.belongs_to :meeting, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
