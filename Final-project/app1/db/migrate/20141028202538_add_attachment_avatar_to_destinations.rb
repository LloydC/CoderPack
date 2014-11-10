class AddAttachmentAvatarToDestinations < ActiveRecord::Migration
  def self.up
    change_table :destinations do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :destinations, :avatar
  end
end
