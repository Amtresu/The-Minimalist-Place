class ChangePostsTextString < ActiveRecord::Migration[7.0]
  def change
    change_column(:posts, :text, :string)
end
end
