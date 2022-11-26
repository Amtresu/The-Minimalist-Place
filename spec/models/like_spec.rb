require 'rails_helper'

RSpec.describe Like, type: :model do
  before(:each) do
    @user = User.create(name: 'Anakin', photo: 'picture', bio: 'Jedi Knight', PostsCounter: 0)
    @post = Post.create(title: 'Blog post', text: 'Lorem Ipsum', CommentsCounter: 0,
                        LikesCounter: 0, author_id: @user.id)
    @like = Like.new(author_id: @user.id, post_id: @post.id, post: @post)
    @like.save
  end
  context 'testing like methods' do
    it 'should increment likes' do
      @like.increment_likes
      likes = @post.LikesCounter
      expect(likes).to be 1
    end
  end
end
