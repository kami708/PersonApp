class ApplicationController < ActionController::Base
  before_action :set_parents
  before_action :set_persons
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) # 新規登録時(sign_up時)にnameというキーのパラメーターを追加で許可する
  end

  def set_parents
    @parents = Category.where(ancestry: nil)
  end

  def set_persons
    @persons = Brand.where(ancestry: nil)
  end
end
