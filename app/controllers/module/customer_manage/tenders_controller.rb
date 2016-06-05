class Module::CustomerManage::TendersController < Module::CustomerController
  respond_to :html


  before_action :set_customer_tender,only:[:show,:update]

  def index
    @tenders = Module::CustomerManage::Tender.get_by_author(current_user).to_a
  end

  def new
    @customer_tender = Module::CustomerManage::Tender.new
  end

  def create
    @customer_tender = Module::CustomerManage::Tender.new(customer_tender_params)
    @customer_tender.author = current_user
    respond_to do |format|
      if @customer_tender.save
        format.html { redirect_to @customer_tender,notice: 'Oksss' }
      else
        format.html { render :new }
        format.js   { render :form_errors }
      end
    end
  end

  def edit

  end

  def show
    binding.pry
  end

  def update

  end

  private

  def set_customer_tender
    @customer_tender = Module::CustomerManage::Tender.find(params[:id])
  end

  def customer_tender_params
    params.require(:module_customer_manage_tender).permit(:title, :description, :contact_data, :budget)
  end


end
