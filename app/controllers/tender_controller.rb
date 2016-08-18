class TenderController < ApplicationController
  layout false
  before_action :authenticate_user!, except: [:show_tender_info]

  def show_contacts
    @tender = Module::CustomerManage::Tender.find(params[:id])
    @tender.reviews << current_user
    @tender.save
  end

  def show_tender_info
    @tender = Module::CustomerManage::Tender.find(params[:id])
  end
end
