require 'rails_helper'
require 'support/tender_factories'
RSpec.describe Module::CustomerManage::TendersController, type: :controller do


  before(:each)do
    @customer = create(:customer_user)
    sign_in @customer
  end



  describe 'new' do
    it '#new' do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe 'create' do
    it '#create'do
      post :create,{module_customer_manage_tender: attributes_for(:tender)}
      expect(assigns[:customer_tender]).to be_valid
      expect(response).to redirect_to(module_customer_manage_tender_path(assigns[:customer_tender]))
    end
  end

  after(:each)do
    users = User.all
    users.each { |user| user.destroy }
  end


end