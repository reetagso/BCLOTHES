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

    @requests_received = Request.joins(:item).where( :items => { :user_id => current_user.id })

  end

  def assign_item
    @request = Request.find(params[:id])
    @item = Item.find(params[:item_id])
    @request.update(item: @item)
    @request.update(status: "Item Requested")
    redirect_to request_path(@request)

  end

  def show
    @request = Request.find(params[:id])
    if current_user == User.find(@request.user_id)
      @request_owner = current_user
      @request_owner_name = "You"
    else
      @request_owner = User.find(@request.user_id)
      @request_owner_name = User.find(@request.user_id)[:first_name]
    end

    if @request.item_id != nil
      @choice = Item.find(@request.item_id)
      @item_owner = User.find(Item.find(@request.item_id).user_id)
      @item_owner_name = User.find(Item.find(@request.item_id).user_id)[:first_name]
    end

    # @items = Item.where(request_id: params[:id])
    if @request.chatroom.nil?
      @chatroom = Chatroom.create(request: @request)
    else
      @chatroom = @request.chatroom
    end
    @user = @request.user
    @message = Message.new
  end

  def new
    @request = Request.new
    if params[:item_id]
      @item = Item.find(params[:item_id])
    end
    #find item id
    #in view conditoinal on fields displayed
  end

  def create
    @request = Request.new(request_params)
    @request.user_id = current_user.id
    if @request.save && Item.find_by(id: params[:id])
      @item = Item.find(params[:id])
      @request.item = @item
      @request.save
      redirect_to request_path(@request)
    elsif @request.save
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
    #chnage to my wardrobe?
    redirect_to requests_path, status: :see_other
  end

  private

  def request_params
    params.require(:request).permit(:start_date, :end_date, :status, :description, :title, :item_id, :id)
  end

  def item_params
    params.require(:item).permit(:id, :size, :colour, :occasion, :category, :brand, :description, :condition, photos: [])
  end

end
