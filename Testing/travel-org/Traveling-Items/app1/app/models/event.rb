class Event < ActiveRecord::Base
	
	belongs_to :destination

	has_attached_file :avatar, 
  	:styles => { :medium => "300x300>", :thumb => "100x100>" }, 
  	:default_url => "/images/:style/missing.png"
    
	validates_attachment_content_type :avatar, 
	:content_type => /\Aimage\/.*\Z/

 	do_not_validate_attachment_file_type :avatar
end
