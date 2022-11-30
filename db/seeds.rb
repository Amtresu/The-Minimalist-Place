require 'ffaker'

# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

50.times do
    User.create do |user|
        user.name = FFaker::Name.name
        user.photo = 'image link'
        user.bio = 'Lorem Ipsum....'
    end
end

100.times do 
    Post.create do |post|
        post.title = FFaker::Movie.title
        post.text  = 'Lorem Ipsum....'
        post.author = User.all.sample
    end
end

100.times do 
    Like.create do |like|
        like.author = User.all.sample
        like.post = Post.all.sample
    end
end

50.times do 
    Comment.create do |comment|
        comment.text = 'Comment'
        comment.author = User.all.sample
        comment.post = Post.all.sample
    end
end
        
