require 'rails_helper'
RSpec.describe 'User index', type: :feature do
  before :each do
    @link = 'Img'
    @author = User.create(name: 'Traxex',
                          photo: @link,
                          bio: 'Drow Ranger')
    visit users_path
  end

  it 'Should show the users name' do
    expect(page).to have_content(@author.name)
  end

  it 'Should show the users photo' do
    image = page.all('img')
    expect(image.size).to eq 1
  end

  it 'Should show the users posts counter' do
    expect(page).to have_content(@author.PostsCounter)
  end

  it 'Should, when clicked, redirect to the users show page.' do
    click_link @author.name
    expect(current_path).to match user_path(@author)
  end
end
