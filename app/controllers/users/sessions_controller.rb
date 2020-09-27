# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  def new_guest
    user = User.guest
    sign_in user
    redirect_to reservations_path, notice: 'ゲストユーザー（保護者）としてログインしました。<br>
                                            ・病児保育施設の予約登録・編集機能、<br>
                                            ・保護者登録・編集機能、<br>
                                            ・お子様情報の登録・編集機能がお使いいただけます。<br>
                                            どうぞお試しください。'
  end

  def new_guest_clerk
    user = User.guest_clerk
    sign_in user
    redirect_to reservations_path, notice: 'ゲストユーザー（窓口担当者）としてログインしました。<br>
                                            ・予約の検索機能、<br>
                                            ・予約の詳細画面より仮予約を本予約へ確定する機能、<br>
                                            ・管理者画面よりユーザーの登録・編集機能、<br>
                                            ・管理者画面より保育施設の登録・編集機能がお使いいただけます。<br>
                                            どうぞお試しください。'
  end

  def new_guest_childminder
    user = User.guest_childminder
    sign_in user
    redirect_to reservations_path, notice: 'ゲストユーザー（保育士）としてログインしました。<br>
                                            ・予約の検索機能（本予約のみ）がお使いいただけます。<br>
                                            どうぞお試しください。'
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
