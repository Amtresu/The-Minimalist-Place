# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  def recent_comments
    comments.limit(5).order(created_at: :desc)
  end

  def update_posts_counter
    author.increment!(:PostsCounter)
  end
end
