require 'rails_helper'

RSpec.describe "module/performer_manages/edit", type: :view do
  before(:each) do
    @module_performer_manage = assign(:module_performer_manage, Module::PerformerManage::TenderComment.create!())
  end

  it "renders the edit module_performer_manage form" do
    render

    assert_select "form[action=?][method=?]", module_performer_manage_path(@module_performer_manage), "post" do
    end
  end
end
