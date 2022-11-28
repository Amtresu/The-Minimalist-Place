require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:example) { get '/users/12/posts' }
    it 'Shoud return a 200 status' do
      expect(response).to have_http_status :ok
    end

    it 'Should show the index template' do
      expect(response).to render_template :index
    end

    it 'Should incldue the correct HTM' do
      expect(response.body).to include '<div class="user_detail_posts">'
    end
  end

  describe 'GET /show' do
    before(:example) { get '/users/12/posts/1' }
    it 'Should retun a 200 status' do
      expect(response).to have_http_status :ok
    end

    it 'Should show the index template' do
      expect(response).to render_template :show
    end

    it 'Should incldue the correct HTML' do
      expect(response.body).to include '<div class="post_detail">'
    end
  end
end
