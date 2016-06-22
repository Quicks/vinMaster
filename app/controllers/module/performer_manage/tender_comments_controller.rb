class Module::PerformerManage::TenderCommentsController < ApplicationController
  before_action :set_module_performer_manage_tender_comment, only: [:show, :edit, :update, :destroy]

  # GET /module/performer_manage/tender_comments
  # GET /module/performer_manage/tender_comments.json
  def index
    @tender_comments = Module::PerformerManage::TenderComment.all
  end

  # GET /module/performer_manage/tender_comments/1
  # GET /module/performer_manage/tender_comments/1.json
  def show
  end

  # GET /module/performer_manage/tender_comments/new
  def new
    @tender_comment = Module::PerformerManage::TenderComment.new
  end

  # GET /module/performer_manage/tender_comments/1/edit
  def edit
  end

  # POST /module/performer_manage/tender_comments
  # POST /module/performer_manage/tender_comments.json
  def create
    @tender_comment = Module::PerformerManage::TenderComment.new(module_performer_manage_tender_comment_params)

    respond_to do |format|
      if @tender_comment.save
        format.html { redirect_to @tender_comment, notice: 'Tender comment was successfully created.' }
        format.json { render :show, status: :created, location: @tender_comment }
      else
        format.html { render :new }
        format.json { render json: @tender_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /module/performer_manage/tender_comments/1
  # PATCH/PUT /module/performer_manage/tender_comments/1.json
  def update
    respond_to do |format|
      if @tender_comment.update(module_performer_manage_tender_comment_params)
        format.html { redirect_to @tender_comment, notice: 'Tender comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @tender_comment }
      else
        format.html { render :edit }
        format.json { render json: @tender_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module/performer_manage/tender_comments/1
  # DELETE /module/performer_manage/tender_comments/1.json
  def destroy
    @tender_comment.destroy
    respond_to do |format|
      format.html { redirect_to module_performer_manage_tender_comments_url, notice: 'Tender comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module_performer_manage_tender_comment
      @tender_comment = Module::PerformerManage::TenderComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def module_performer_manage_tender_comment_params
      params.fetch(:tender_comment, {})
    end
end
