class HomeController < ApplicationController
  def index
    @tender_categories = Module::AdminManage::Category.all
    # @tenders = Module::CustomerManage::Tender.all
  end

  def home
  end

  def contacts
  end

  def authentication
  end

end
