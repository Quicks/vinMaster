class Module::CustomerManage::TendersController < Module::ApplicationController
  respond_to :html

  before_action :set_customer_tender,only:[:show,:update,:edit]

  def index
    @tenders = Module::CustomerManage::Tender.get_by_author(current_user).to_a
  end

  def new
    @customer_tender = Module::CustomerManage::Tender.new
  end

  def create
    @customer_tender = Module::CustomerManage::Tender.new(customer_tender_params)
    @customer_tender.author = current_user
    if @customer_tender.save
      flash[:notice] = 'Тендер було збережено'
    end
    respond_with(@customer_tender)
  end

  def edit
  end

  def show
  end

  def update
    @customer_tender.update(customer_tender_params)
    respond_with(@customer_tender)
  end

  private

  def set_customer_tender
    @customer_tender = Module::CustomerManage::Tender.find(params[:id])
  end

  def customer_tender_params
    params.require(:module_customer_manage_tender).permit(:address,:title, :description, :contact_data, :budget)
  end


end
