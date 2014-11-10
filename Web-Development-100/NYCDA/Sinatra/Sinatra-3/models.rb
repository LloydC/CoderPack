class User < ActiveRecord::Base
has_one :profile
has_many :posts, through: :posts_users
has_many :rooms, through: :rooms_users

end

class Profile < ActiveRecord::Base
belongs_to :user
end

class Post < ActiveRecord::Base
has_many :posts_users
end

class Room < ActiveRecord::Base
has_many :rooms_users
end

class RoomsUsers < ActiveRecord::Base
belongs_to :user
belongs_to :room
end

class PostsUsers < ActiveRecord::Base
belongs_to :user
belongs_to :post
end