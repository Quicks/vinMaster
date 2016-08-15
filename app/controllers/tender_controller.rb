class TenderController < ApplicationController
  layout false

  def show_contacts
    @tender = Module::CustomerManage::Tender.find(params[:id])
    @tender.review_counter = @tender.review_counter + 1
    @tender.save
  end

  def show_tender_info
    @tender = Module::CustomerManage::Tender.find(params[:id])
    # render 'te/show_tender_info' ,layout: false
  end
end
