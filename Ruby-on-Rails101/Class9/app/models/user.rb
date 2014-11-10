class User < ActiveRecord::Base

has_secure_password
validates :email, presence: true,
				uniqueness: true,
				format: {with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, 
						message: "Your email does not seem to be valid"
					}

end
