class User < ActiveRecord::Base
	has_one :profile
	has_many :posts
	#has_many :rooms
	has_many :user_rooms
	has_many :rooms, through: :user_rooms
end

class Profile < ActiveRecord::Base
	belongs_to :user
end

class Room < ActiveRecord::Base
    #has_many :users
    has_many :user_rooms
    has_many :users, through: :user_rooms
end

class Post < ActiveRecord::Base
	belongs_to :user
end

class UserRooms < ActiveRecord::Base
    belongs_to :user
    belongs_to :room
end