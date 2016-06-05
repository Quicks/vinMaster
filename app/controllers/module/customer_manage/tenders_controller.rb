class Module::CustomerManage::TendersController < Module::CustomerController

  def index
    @tenders = Tender.get_by_author(current_user).to_a
  end

  def new
    @customer_tender = Module::CustomerManage::Tender.new
  end

  def create

  end

  def edit

  end

  def update

  end


end
