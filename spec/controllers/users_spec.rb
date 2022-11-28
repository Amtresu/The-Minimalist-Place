require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:example) { get users_path }
    it 'Shoud return a 200 status' do
      expect(response).to have_http_status(200)
    end

    it "Should show the index template" do
      expect(response).to render_template(:index)
    end

    it 'Should incldue the correct HTML' do
      expect(response.body).to include '<div class="user_div">'
    end
  end

  describe 'GET /show' do
    before(:example) { get '/users/12' }
    it 'Should retun a 200 status' do
      expect(response).to have_http_status 200
    end

    it "Should show the index template" do
      expect(response).to render_template :show
    end

    it 'Should incldue the correct HTML' do
      expect(response.body).to include '<div class="user_detail_div">'
    end
  end
end