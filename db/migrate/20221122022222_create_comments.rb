class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :authordId
      t.integer :postid
      t.string :text
      t.timestamp :UpdateAt
      t.timestamp :CreatedAt

      t.timestamps
    end
  end
end
