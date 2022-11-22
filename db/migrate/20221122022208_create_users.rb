class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :photo
      t.text :bio
      t.timestamp :UpdatedAt
      t.timestamp :CreaetedAt
      t.integer :PostsCounter

      t.timestamps
    end
  end
end
