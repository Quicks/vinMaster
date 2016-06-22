require 'rails_helper'

RSpec.describe "Module::PerformerManage::TenderComments", type: :request do
  describe "GET /module_performer_manage_tender_comments" do
    it "works! (now write some real specs)" do
      get module_performer_manage_tender_comments_path
      expect(response).to have_http_status(200)
    end
  end
end
