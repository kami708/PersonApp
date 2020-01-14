class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    
  end

  def new
    @product = Product.new
    
  end


  
  private
  # def post_params
  #   params.permit(:name, :text)
  # end

  # def manji
  #   redirect_to action: :index unless user_signed_in?
  # end
end
