class SuggestionsController < ApplicationController
  def new
    @request = Request.find(params[:request_id])
    @suggestion = Suggestion.new
    @items = Item.where(user_id: current_user.id)
  end

  def create
    @request = Request.find(params[:request_id])
    @suggestion = Suggestion.new(suggestion_params)
    @suggestion.request = @request
    if @suggestion.save
      redirect_to request_path(@request)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def suggestion_params
    params.require(:suggestion).permit(:item_id, :request_id)
  end

end
