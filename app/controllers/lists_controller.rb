class ListsController < ApplicationController
  def index
    @listas = List.all
  end

  def show
    @list = List.find(params[:id])
    @name = Name.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render "new"
    end
  end
end
