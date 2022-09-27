class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # ログイン時のパスを変更
  def after_sign_in_path_for(resource)
    if customer_signed_in?
      customers_path(resource)
    else
      admin_top_path
    end
  end

  # ログアウト時のパスを変更
  def after_sign_out_path_for(_resource)
    root_path
  end

  # 新規登録の保存機能
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[first_name last_name kana_first_name kana_last_name email])

    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end

  private

  def set_card
    @card = Crad.find(params[:id])
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end
end
