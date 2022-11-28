class ApplicationController < ActionController::Base
    def current_user
      User.first.order(created_at: :asc)
    end
  end