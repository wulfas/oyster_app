class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @reviews = current_user.reviews
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.favorite = params[:favorite]
    @review.user_id = current_user.id
    @review.comment = params[:comment]
    @review.date = params[:date]
    @review.location = params[:location]
    @review.rating = params[:rating]
    @review.oyster_id = params[:oyster_id]

    if @review.save
      redirect_to "/reviews", :notice => "Review created successfully."
    else
      render 'new'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    @review.favorite = params[:favorite]
    @review.user_id = params[:user_id]
    @review.comment = params[:comment]
    @review.date = params[:date]
    @review.location = params[:location]
    @review.rating = params[:rating]
    @review.oyster_id = params[:oyster_id]

    if @review.save
      redirect_to "/reviews", :notice => "Review updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:id])

    @review.destroy

    redirect_to "/reviews", :notice => "Review deleted."
  end
end
