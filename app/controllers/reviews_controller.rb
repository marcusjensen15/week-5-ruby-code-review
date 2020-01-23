class ReviewsController < ApplicationController

  def index
    # Code for listing all albums goes here.
  end

  def new
    # Code for new album form goes here.
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    render :new
  end

  def create
    # Code for creating a new album goes here.
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
      if @review.save
        flash[:notice] = "Review successfully added!"

        redirect_to product_path(@product)
      else
        render :new
      end
  end

  def edit
    # Code for edit album form goes here.
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render :edit
  end

  def show
    # Code for showing a single album goes here.
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render :show
  end

  def update
    # breaking when we try to update with a number out of range, might be the same for review length. likely will need to add && to if statement making sure rating and length of review are within range.
    @review = Review.find(params[:id])
    @product = Product.find(params[:product_id])


    #proposed fix below. added key and statements, isn't fixing it

      if @review.update(review_params) && review_params[:rating].to_i > 0 && review_params[:rating].to_i < 5 && review_params[:content_body].length > 50 && review_params[:content_body].length < 250
        #changed from review path to reviews path
        redirect_to product_review_path(@review.product)
      else
        render :edit
      end
  end

  def destroy
    # Code for deleting an album goes here.

    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@review.product)
  end

  private
  def review_params
    params.require(:review).permit(:author, :content_body, :rating, :product_id)
  end

end
