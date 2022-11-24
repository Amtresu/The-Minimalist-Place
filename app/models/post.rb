# frozen_string_literal: true

class Post < ApplicationRecord
    belongs_to :user
    has_many :comments 
    has_many :likes

    
  def recent_comments
    comments.limit(5).order(created_at: :desc)
  end

  def update_posts_counter
    user.increment!(:Posts_Counter)
  end
  
end