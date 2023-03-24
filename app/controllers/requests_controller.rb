class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def my_requests
    @user = User.new
    @requests_sent = Request.where(user_id: current_user.id)
    @requests_sent_open = @requests_sent.where(status: "Open")
    @requests_sent_closed = @requests_sent.where(status: "Closed")
    @requests_sent_pending = @requests_sent.where(status: "Item Requested")

    items = Item.where(user_id: current_user.id)
    @requests_received = []
    items.each do |item|
      @requests_received << Request.where(item_id: item.id)
    end

  end

  def show
    @request = Request.find(params[:id])
    # @items = Item.where(request_id: params[:id])
  end

  def new
    @request = Request.new
    #find item id
    #in view conditoinal on fields displayed
  end

  def create
    #add conditional on whether item id came from params or form input
    @request = Request.new(request_params)
    @request.user_id = current_user.id
    if @request.save
      redirect_to request_path(@request)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    if @request.update(request_params)
      redirect_to request_path(@request)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to requests_path, status: :see_other
  end

  private

  def request_params
    params.require(:request).permit(:start_date, :end_date, :status, :description, :title, :item_id)
  end

end
