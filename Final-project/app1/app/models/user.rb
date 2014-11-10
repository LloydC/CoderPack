class User < ActiveRecord::Base
 
has_secure_password

has_attached_file :avatar, 
  :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
  :default_url => "/images/:style/missing.png"
    
validates_attachment_content_type :avatar, 
:content_type => /\Aimage\/.*\Z/

 do_not_validate_attachment_file_type :avatar

 validates :email, 
			:presence => {:message => "Please enter your email"}, 
			:uniqueness => {:message => "This email is already being used"}

end
