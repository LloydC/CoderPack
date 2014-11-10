class CreatePostsTable < ActiveRecord::Migration
  def change
  	create_table :posts do |p|
  		p.string :content
  	end
  end
end
