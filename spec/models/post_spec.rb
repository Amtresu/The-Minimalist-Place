require 'rails_helper'

RSpec.describe Post, type: :model do
  before(:each) do
    @user = User.create(name: 'Anakin', photo: 'picture', bio: 'Jedi Knight', PostsCounter: 0)
    @post = Post.create(title: 'Blog post', text: 'Lorem Ipsum', CommentsCounter: 0,
                        LikesCounter: 0, author_id: @user.id)
    @like = Like.new(author_id: @user.id, post_id: @post.id, post: @post)
    @like.save
  end
  context 'testing post validations' do
    it 'should have a title' do
      @post.title = nil
      expect(@post).to_not be_valid
    end

    it 'should not be more than 250 chars' do
      length = @post.title.length
      expect(length).to be <= 250
    end

    it 'should not have nil value for comments counter' do
      @post.CommentsCounter = nil
      expect(@post).to_not be_valid
    end

    it 'should be an integer equal to or greater than 0' do
      @post.CommentsCounter = 0
      expect(@post.CommentsCounter).to be_kind_of Numeric
    end

    it 'should be an integer equal to or greater than 0' do
      @post.LikesCounter = 0
      expect(@post.CommentsCounter).to be_kind_of Numeric
    end
  end

  context 'testing methods of post model' do
    it 'should return recent comments' do
      comments = @post.recent_comments
      expect(comments.length).to be 0
    end

    it 'should increment the Posts' do
      @post.author = @user
      @post.update_posts_counter
      user_posts = @user.PostsCounter
      expect(user_posts).to be 1
    end
  end
end
