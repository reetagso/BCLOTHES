class ItemsController < ApplicationController
  def index
    @items = Item.all
    if params[:query].present?
      @items = Item.search_by_attributes(params[:query])
    else
      @items = Item.all
    end
  end

  def show
    @item = Item.find(params[:id])
    @requests = Request.where(item_id: params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    if @item.save
      redirect_to item_path(@item)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    #change path to my wardrobe?
    redirect_to items_path, status: :see_other
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render "new", status: :unprocessable_entity
    end
  end

  def archive!
    @item = Item.find(params[:id])
    if @item.archived == false
      @item.update(archived: true)
    else
      @item.update(archived: false)
    end
    redirect_to item_path(@item)
  end


  #not working
  # def delete_image_attachment
  #   @item = Item.find(params[:id])
  #   @photo = ActiveStorage::Attachment.find(params[:id])
  #   @photo.purge_later
  #   redirect_to items_path
  # end

  private

  def item_params
    params.require(:item).permit(:size, :colour, :occasion, :category, :brand, :description, :condition, :archived, photos: [])
  end

end
