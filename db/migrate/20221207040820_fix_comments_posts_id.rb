class FixCommentsPostsId < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :comments, :posts_id, :post_id
  end
end
