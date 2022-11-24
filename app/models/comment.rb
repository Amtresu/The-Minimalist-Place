# frozen_string_literal: true

class Comment < ApplicationRecord
    belongs_to :post 
    belongs_to :user

    def increment_comments
        user.increment!(:PostsCounter)
    end
end
