class ListsController < ApplicationController

  before_filter :find_list, only: [:show, :edit, :update, :destroy]

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

  def show
  end

  def edit
  end

  def update
    if @list.update_attributes(params[:list])
      flash[:notice] = "list has been updated"
      redirect_to @list
    else
      flash[:alert] = "there was a problem updating your list"
      render action: "edit"
    end
  end

  def destroy
    if @list.destroy
      flash[:notice] = "list was deleted"
      redirect_to lists_path
    else
      flash[:alert] = "there was a problem deleting your list"
      redirect_to @list
    end
  end

  private

    def find_list
      @list = List.find(params[:id])
    end

end
