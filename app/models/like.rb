# frozen_string_literal: true

class Like < ApplicationRecord
    belongs_to :post
    belongs_to :user

    def increment_likes
        post.increment!(:LikesCounter)
      end

end
