# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User'

  def increment_comments
    post.increment!(:CommentsCounter)
  end
end
