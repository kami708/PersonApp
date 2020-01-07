class ProductsController < ApplicationController
  before_action :manji, except: :index
  def index
    
  end
  
  private
  def post_params
    params.permit(:name, :text)
  end

  def manji
    redirect_to action: :index unless user_signed_in?
  end
end
