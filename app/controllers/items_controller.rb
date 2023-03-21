class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    authorize @item
    if @item.save
      redirect_to item_path(@item)
    else
      render "new", status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:size, :colour, :occasion, :category, :brand, :description, photos: [])
  end


end
