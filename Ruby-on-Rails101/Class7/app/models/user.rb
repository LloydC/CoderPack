class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	 has_secure_password 
	   
	 validates :password,  presence: true, 
	 						on: :create, 
	 						confirmation: true

	 validates :email, presence: true
end
