class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :address
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
