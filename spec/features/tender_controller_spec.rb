require 'rails_helper'

RSpec.describe Module::CustomerManage::TenderController, type: :controller do

  # subject(:customer){ FactoryGirl.create(:customer_user)}

  # subject(:customer) { create(:customer_user) }
  # before() do
  #   sign_in(customer)
  # end
  describe 'create' do
    it '#create' do
      customer = create(:customer_user)
      sign_in customer
      get :new
      response.should render_template(:partial => 'new')
    end

  end


end