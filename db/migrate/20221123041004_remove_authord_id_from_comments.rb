class RemoveAuthordIdFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :authordId, :integer
  end
end
