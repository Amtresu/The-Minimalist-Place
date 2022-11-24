require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create(name: 'Anakin', photo: 'picture', bio: 'Jedi Knight', PostsCounter: 0)
    @post = Post.create(title: 'Blog post', text: 'Lorem Ipsum', CommentsCounter: 0,
                        LikesCounter: 0, author_id: @user.id)
    @like = Like.new(author_id: @user.id, post_id: @post.id, post: @post)
    @like.save
  end
  context 'testing user validations' do
    it 'Username should not be blank' do
      @user.name = nil
      expect(subject).to_not be_valid
    end
  end

  context 'testing methods of user model' do
    it 'should return recent users' do
      Post.create(title: 'Blog post', text: 'Lorem Ipsum', CommentsCounter: 0, LikesCounter: 0,
                  author_id: @user.id)
      user_posts = @user.return_posts
      expect(user_posts.length).to be 2
    end
  end
end
