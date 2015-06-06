class OystersController < ApplicationController
  def index
    @oysters = Oyster.all
    @reviews = current_user.reviews
  end

  def show
    @oyster = Oyster.find(params[:id])
  end

  def new
    @oyster = Oyster.new
  end

  def create
    @oyster = Oyster.new
    @oyster.description = params[:description]
    @oyster.name = params[:name]

    if @oyster.save
      redirect_to "/oysters", :notice => "Oyster created successfully."
    else
      render 'new'
    end
  end

  def edit
    @oyster = Oyster.find(params[:id])
  end

  def update
    @oyster = Oyster.find(params[:id])

    @oyster.description = params[:description]
    @oyster.name = params[:name]

    if @oyster.save
      redirect_to "/oysters", :notice => "Oyster updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @oyster = Oyster.find(params[:id])
    @oyster.destroy


      redirect_to "/oysters", :notice => "Oyster deleted."
  end
end
