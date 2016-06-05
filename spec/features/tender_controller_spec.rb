require 'rails_helper'

RSpec.describe Module::CustomerManage::TendersController, type: :controller do

  before(:each)do
    customer = create(:customer_user)
    sign_in customer
  end



  describe 'new' do
    it '#new' do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe 'create' do
    it '#create'do
      get :create

    end
  end

  after(:each)do
    users = User.all
    users.each { |user| user.destroy }
  end


end