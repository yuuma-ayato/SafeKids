# frozen_string_literal: true

module Users
  class SessionsController < Devise::SessionsController
    # before_action :configure_sign_in_params, only: [:create]

    def new_guest
      user = User.guest
      sign_in user
      redirect_to reservations_path, notice: '保護者としてログインしました。<br>
                                            ・病児保育施設の予約<br>
                                            ・保護者の登録<br>
                                            ・お子様情報の登録<br>
                                            上記の機能がお使いいただけます。<br>
                                            どうぞお試しください。'
    end

    def new_guest_clerk
      user = User.guest_clerk
      sign_in user
      redirect_to reservations_path, notice: '窓口担当者としてログインしました。<br>
                                            ・予約の検索<br>
                                            ・予約の確定（予約詳細画面）<br>
                                            ・ユーザーの登録（管理者画面）<br>
                                            ・保育施設の登録（管理者画面）<br>
                                            上記の機能がお使いいただけます。<br>
                                            どうぞお試しください。'
    end

    def new_guest_childminder
      user = User.guest_childminder
      sign_in user
      redirect_to reservations_path, notice: '保育士としてログインしました。<br>
                                            ・予約の検索（本予約のみ）ができます。<br>
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
end
