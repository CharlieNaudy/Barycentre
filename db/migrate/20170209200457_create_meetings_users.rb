class CreateMeetingsUsers < ActiveRecord::Migration[5.0]

  def change

  	create_table :users do |t|
      t.string :email
      t.string :password
      t.string :firstName
      t.string :lastName
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end

    create_table :meetings do |t|
      t.string :name
      t.datetime :date
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
   end
end
