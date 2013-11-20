class User < ActiveRecord::Base
	belongs_to :user_role
	has_many :entries

	def self.authentication(username, password)
		user = User.find_by_username(username)

		if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
			user
		else
			nil
		end
	end
end
