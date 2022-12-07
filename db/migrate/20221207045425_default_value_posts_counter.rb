class DefaultValuePostsCounter < ActiveRecord::Migration[7.0]
  def self.up
    change_column :users, :PostsCounter, :integer, :default => 0
  end
end
