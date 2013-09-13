class User < ActiveRecord::Base
	has_secure_password validations: true

	#valid user data only
	validates :username, :email, presence: true
	validates_uniqueness_of :username
	validates :email, format: { with: /(\w[-._\w]*\w@\w[-._\w]*\w\.\w{2,4})/ }
	validates :password, :password_confirmation, length: { in: 6..20 }

end
