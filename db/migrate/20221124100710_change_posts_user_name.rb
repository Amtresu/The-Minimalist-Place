class ChangePostsUserName < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :posts, :user_id, :author_id
  end
end
