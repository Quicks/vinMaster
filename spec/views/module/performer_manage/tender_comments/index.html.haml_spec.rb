require 'rails_helper'

RSpec.describe "module/performer_manages/index", type: :view do
  before(:each) do
    assign(:tender_comments, [
      Module::PerformerManage::TenderComment.create!(),
      Module::PerformerManage::TenderComment.create!()
    ])
  end

  it "renders a list of module/performer_manages" do
    render
  end
end
