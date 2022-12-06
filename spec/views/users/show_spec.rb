require 'rails_helper'
RSpec.describe 'User Show', type: :feature do
  before :each do
    @img = 'Img'
    @author = User.create(id: 1, name: 'Oscar Funk', PostsCounter: 2, photo: @img, bio: 'Drow Ranger')
    @post1 = Post.create(author: @author, title: 'title 1', text: 'Post 1', LikesCounter: 1, CommentsCounter: 1)
    @post2 = Post.create(author: @author, title: 'title 2', text: 'Post 2', LikesCounter: 1, CommentsCounter: 1)
    @post3 = Post.create(author: @author, title: 'title 3', text: 'Post 3', LikesCounter: 1, CommentsCounter: 1)

    visit user_path(@author)
  end

  it 'Should show the users photo' do
    image = page.all('img')
    expect(image.size).to eq 1
  end

  it 'Should show the user name' do
    expect(page).to have_content(@author.name)
  end

  it 'Should show the users bio' do
    expect(page).to have_content(@author.bio)
  end

  it 'Should show the users first three posts' do
    expect(page).to have_content(@post1.title)
    expect(page).to have_content(@post2.title)
    expect(page).to have_content(@post3.title)
  end

  it 'Should have a link to see all the users posts.' do
    expect(page).to have_content('See All Posts')
  end

  it 'Should redirect me to see all the users posts when the link is clicked' do
    click_link 'See All Posts'
    expect(current_path).to match user_posts_path(@author)
  end
end
