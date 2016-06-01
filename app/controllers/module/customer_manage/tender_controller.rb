class Module::CustomerManage::TenderController < Module::CustomerController

  def index
    @tenders = Tender.get_by_author(current_user).to_a
  end

  def new
  end
end
