# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  def new_guest
    user = User.guest
    sign_in user
    redirect_to reservations_path, notice: 'ゲストユーザー（保護者）としてログインしました。'
  end

  def new_guest_clerk
    user = User.guest_clerk
    sign_in user
    redirect_to reservations_path, notice: 'ゲストユーザー（窓口担当者）としてログインしました。'
  end

  def new_guest_childminder
    user = User.guest_childminder
    sign_in user
    redirect_to reservations_path, notice: 'ゲストユーザー（保育士）としてログインしました。'
  end

  def after_sign_in_path_for(resource)
    reservations_path(resource)
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
