# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author

  def increment_comments
    post.increment!(:PostsCounter)
  end
end
