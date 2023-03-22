class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user_id = current_user.id
    if @request.save
      redirect_to request_path(@request)
    else
      render "new", status: :unprocessable_entity
    end
  end

  private

  def request_params
    params.require(:request).permit(:start_date, :end_date, :status, :description, :title, :item_id)
  end

end
