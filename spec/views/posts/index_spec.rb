require 'rails_helper'

RSpec.describe 'Post Index', type: :feature do
  before :each do
    @img = 'Img'
    @author = User.create(name: 'Oscar Funk', PostsCounter: 2, photo: @img, bio: 'Drow Ranger')
    @post1 = Post.create(author: @author, title: '1', text: 'Post 1', CommentsCounter: 1, LikesCounter: 1)
    @post2 = Post.create(author: @author, title: '2', text: 'Post 2', CommentsCounter: 1, LikesCounter: 1)

    visit user_path(@author.id)
  end

  it 'shows the username of the user' do
    expect(page).to have_content(@author.name)
  end

  it 'Shows the number of posts from each user' do
    expect(page.body).to include('2')
  end

  it 'Shows the posts title' do
    expect(page.body).to have_content(@post1.title)
  end

  it 'Should show the post body' do
    expect(page).to have_content(@post2.text)
  end

  it 'Redirects to show page when clicked' do
    visit user_post_path(@author, @post1)
    expect(current_path).to match user_post_path(@author, @post1)
  end
end
