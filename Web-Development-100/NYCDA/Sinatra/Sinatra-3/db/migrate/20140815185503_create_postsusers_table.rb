class CreatePostsUsersTable < ActiveRecord::Migration
  def up
  	create_table :posts_users do |t|
  		t.integer :user_id
  		t.integer :post_id
  		t.string :content
  		t.timestamp
  end
end

def down
	drop_table :posts_users

end
end
