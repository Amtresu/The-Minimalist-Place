class ChangeCommentsUserName < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :comments, :user_id, :author_id
  end
end
