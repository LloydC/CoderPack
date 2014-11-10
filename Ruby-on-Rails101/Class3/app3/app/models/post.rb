class Post < ActiveRecord::Base
has_many :user_posts
has_many :users, through: :user_posts
belongs_to :users
end
