class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

attr_accessor :login

validates :username, presence: true, length: {maximum: 255}, uniqueness: { case_sensitive: false }, format: { with: /\A[a-zA-Z0-9]*\z/, message: "may only contain letters and numbers." }

has_attached_file :avatar, 
  :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
  :default_url => "/images/:style/missing.png"
    
validates_attachment_content_type :avatar, 
:content_type => /\Aimage\/.*\Z/

		def self.find_first_by_auth_conditions(warden_conditions)
  			conditions = warden_conditions.dup
  		if login = conditions.delete(:login)
    	where(conditions).where(["username = :value OR lower(email) = lower(:value)", { :value => login }]).first
  		else
    	where(conditions).first
  			end
		end

end
