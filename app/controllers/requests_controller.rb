class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def show
    @request = Item.find(params[:id])
  end
end
