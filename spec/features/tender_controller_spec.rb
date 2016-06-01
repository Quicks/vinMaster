require 'rails_helper'

RSpec.describe Module::CustomerManage::TenderController, type: :controller do

  describe 'create' do
    it '#create' do
      get :new
      response.should render_template(:partial => 'partial_name')
    end

  end


end