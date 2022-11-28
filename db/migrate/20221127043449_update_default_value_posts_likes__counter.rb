class UpdateDefaultValuePostsLikesCounter < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :LikesCounter, :integer, default: 0
  end
end
