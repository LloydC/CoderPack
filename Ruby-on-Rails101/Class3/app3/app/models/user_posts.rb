class UserPosts < ActiveRecord::Base
belongs_to :users
belongs_to :posts
end
