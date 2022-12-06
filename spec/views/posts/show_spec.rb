RSpec.describe 'Post Show', type: :feature do
  before :each do
    @img = 'Img'
    @author = User.create(id: 1, name: 'Oscar Funk', PostsCounter: 2, photo: @img, bio: 'Drow Ranger')
    @post1 = Post.create(id: 1, author: @author, title: 'title', text: 'Post 1', CommentsCounter: 2, LikesCounter: 2)

    @comment1 = Comment.create(author: @author, post: @post1, text: 'comment 1')

    visit user_post_path(@author, @post1)
  end

  it 'Should show the posts title' do
    expect(page).to have_content(@post1.title)
  end

  it 'Should include authors name' do
    expect(page).to have_content(@author.name)
  end

  it 'Should show the comments counter' do
    expect(page).to have_content(@post1.CommentsCounter)
  end

  it 'Should show the likes counter' do
    expect(page).to have_content(@post1.LikesCounter)
  end

  it 'Should show the authors name' do
    expect(page).to have_content(@comment1.author.name)
  end

  it 'Should show the authors comment' do
    expect(page).to have_content(@comment1.text)
  end
end
