class HomeController < ApplicationController
  def index
    @tenders = Module::CustomerManage::Tender.all
  end

  def home
  end

  def contacts
  end

  def authentication
  end

end
