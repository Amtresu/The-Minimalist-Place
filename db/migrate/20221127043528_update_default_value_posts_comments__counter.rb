class UpdateDefaultValuePostsCommentsCounter < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :CommentsCounter, :integer, default: 0
  end
end
