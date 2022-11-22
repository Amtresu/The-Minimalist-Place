# frozen_string_literal: true

json.extract! post, :id, :AuthorId, :title, :text, :CreatedAt, :CommentsCounter, :LikesCounter, :created_at, :updated_at
json.url post_url(post, format: :json)
