class User < ApplicationRecord
	has_many :users_to_meetings
	has_many :meetings, :through => :users_to_meetings
	has_many :friends

	def fetch_token!
		self.token = SecureRandom.base64(50)
		self.save!
		self.token
	end
end
