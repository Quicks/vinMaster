require 'rails_helper'

RSpec.describe "module/performer_manages/new", type: :view do
  before(:each) do
    assign(:module_performer_manage, Module::PerformerManage::TenderComment.new())
  end

  it "renders new module_performer_manage form" do
    render

    assert_select "form[action=?][method=?]", module_performer_manage_tender_comments_path, "post" do
    end
  end
end
