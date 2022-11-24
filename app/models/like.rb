# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :post
  belongs_to :author, class_name: 'User'

  def increment_likes
    post.increment!(:LikesCounter)
  end
end
