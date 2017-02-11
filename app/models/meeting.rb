class Meeting < ApplicationRecord
	has_many :users_to_meetings
	has_many :users, :through => :users_to_meetings
end
