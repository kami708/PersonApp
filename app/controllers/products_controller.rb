class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @products = Product.includes(:product_images).order('id DESC').limit(10)
    @new_releases = Product.includes(:product_images).where(category_id: 1..13).limit(10).order('id DESC')
    @mens = Product.includes(:product_images).where(category_id: 14..30).limit(10).order('id DESC')
    @womens = Product.includes(:product_images).where(category_id: 31..47).limit(10).order('id DESC')
    @kids = Product.includes(:product_images).where(category_id: 48..64).limit(10).order('id DESC')
    
  end

  def new
    @product = Product.new
    5.times{@product.product_images.build}
    @brands = Brand.where('name LIKE(?)',"%#{params[:keyword]}%").limit(5)
    @category_parent_array = Category.where(ancestry: nil)

  end

  def show
    @product = Product.find(params[:id])
    @images = @product.product_images
    if @product.seller_id != current_user.id
      redirect_to root_path
    end
  end

  def create
    @product = Product.new(product_params)    
    if @product.save
      redirect_to root_path, notice: '出品が完了しました'
    else
      flash[:error] = @product.errors.keys.map { |key|[key, @product.errors.full_messages_for(key)]}.to_h
      redirect_to new_product_path
    end
  end

  def destroy 
    @product = Product.find(params[:id])
    @product.destroy 
    if @product.seller_id == current_user.id
      redirect_to root_path
      flash[:alert] = '商品を削除しました'
    else
      redirect_to root_path
      flash[:alert] = '商品削除に失敗しました'
    end
  end

  def get_category_children
    @category_children = Category.find_by(id: params[:parent_id], ancestry: nil).children
  end

  def get_category_grandchildren
    @category_grandchildren = Category.find(params[:child_id]).children
  end

  def get_image
  end

  def delete_image
    @ids = params[:id]
    @ids.each do |id|
      ProductImage.find(id).delete
    end
  end

  def get_size
    selected_grandchild = Category.find(params[:grandchild_id])
    if related_size_parent = selected_grandchild.sizes[0]
      @sizes = related_size_parent.children
    else
      selected_child = Category.find(params[:grandchild_id]).parent
      if related_size_parent = selected_child.sizes[0]
        @sizes = related_size_parent.children 
      end
    end
  end

  def search_brand
    @brands = Brand.where('name LIKE(?)',"%#{params[:keyword]}%").limit(5)
  end


  
  private
  def product_params
    params.require(:product).permit(
      :name, 
      :description, 
      :size_id,
      :price, 
      :category_id,
      :brand_name,
      :brand_id,
      product_images_attributes: [:image]
    ).merge(
      user_id: current_user.id,
      seller_id: current_user.id,
    )
  end

  def save_image
    @images_id = params.require(:product).permit(product_images_attributes: [:id])
    @images_id.each do |id|
      @image = ProductImage.find(id)
      @image.create
    end
  end
  
  # def post_params
  #   params.permit(:name, :text)
  # end

  # def manji
  #   redirect_to action: :index unless user_signed_in?
  # end
end
