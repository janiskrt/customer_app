# migration to use Paperclip for avatar pictures
class ProfilePicture < ActiveRecord::Migration
  def change
    remove_column :users, :avatar
    add_attachment :users, :avatar
  end
end
