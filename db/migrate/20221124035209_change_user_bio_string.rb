class ChangeUserBioString < ActiveRecord::Migration[7.0]
  def change
    change_column(:users, :bio, :string)
end
end
