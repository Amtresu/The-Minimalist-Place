require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:each) do
    @user = User.create(name: 'Anakin', photo: 'picture', bio: 'Jedi Knight', PostsCounter: 0)
    @post = Post.create(title: 'Blog post', text: 'Lorem Ipsum', CommentsCounter: 0,
                        LikesCounter: 0, author_id: @user.id)
    @comment = Comment.new(post: @post, text: 'Where are the younglings?', author_id: @user.id, post_id: @post.id)
    @comment.save
  end
  context 'testing comment methods' do
    it 'should increment the comments counter' do
      @comment.increment_comments
      comments = @comment.post.CommentsCounter
      expect(comments).to be 1
    end
  end
end
