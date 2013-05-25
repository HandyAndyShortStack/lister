class ListsController < ApplicationController
	def index
    @lists = List.all
	end

  def new
    @list = List.new
  end

  def create
    @list = List.new params[:list]
    if @list.save
      flash[:notice] = "Your list was created!"
      redirect_to lists_path
    else
      flash[:alert] = "there was a problem making your list"
      redirect_to lists_path
    end
  end

end
