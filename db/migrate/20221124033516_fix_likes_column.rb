class FixLikesColumn < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :likes, :posts_id, :post_id
  end
end
