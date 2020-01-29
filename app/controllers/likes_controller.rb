class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, product_id: params[:product_id])
    @likes = Like.where(product_id: params[:product_id])
    # @products = Product.all
    @product = Product.find(params[:product_id])
    # redirect_to product_path(@product)
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, product_id: params[:product_id])
    like.destroy
    @likes = Like.where(product_id: params[:product_id])
    # @products = Product.all
    @product = Product.find(params[:product_id])
    # redirect_to product_path(@product)
  end
end
