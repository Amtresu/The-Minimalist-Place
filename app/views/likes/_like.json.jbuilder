# frozen_string_literal: true

json.extract! like, :id, :AuthorId, :PostId, :CreatedAt, :UpdatedAt, :created_at, :updated_at
json.url like_url(like, format: :json)
