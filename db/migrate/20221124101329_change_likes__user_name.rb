class ChangeLikesUserName < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :likes, :user_id, :author_id
  end
end
