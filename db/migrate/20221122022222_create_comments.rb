# frozen_string_literal: true

# comments
class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :authordId
      t.integer :postid
      t.string :text

      t.timestamps
    end
  end
end
