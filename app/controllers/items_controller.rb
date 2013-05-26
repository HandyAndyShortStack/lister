class ItemsController < ApplicationController

  before_filter :find_list

  def new
    @item = @list.items.build
  end

  def create
    @item = @list.items.build(params[:item])
    if @item.save
      flash[:notice] = "You just created a new item ^_^"
      redirect_to @list
    else
      flash[:notice] = "there was a problem creating your item"
      redirect_to @list
    end
  end

  private

    def find_list
      @list = List.find(params["list_id"])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "the list was not found"
      redirect_to :back
    end

end
