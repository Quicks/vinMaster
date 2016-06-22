require 'rails_helper'

RSpec.describe "module/performer_manages/show", type: :view do
  before(:each) do
    @module_performer_manage = assign(:module_performer_manage, Module::PerformerManage::TenderComment.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
