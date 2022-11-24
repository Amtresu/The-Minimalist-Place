class RemovePostIdFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :postid, :integer
  end
end
