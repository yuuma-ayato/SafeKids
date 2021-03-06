module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :check_guest, only: %i[update destroy]
    # before_action :configure_sign_up_params, only: [:create]
    # before_action :configure_account_update_params, only: [:update]

    def check_guest
      case resource.email
      when 'guest@example.com', 'guest_clerk@example.com', 'guest_childminder@example.com'
        redirect_to edit_user_registration_path, alert: 'ゲストユーザーの変更・削除はできません。'
      end
    end

    # アカウント登録後のリダイレクト先
    def after_sign_up_path_for(_resource)
      new_contact_path
    end

    # アカウント編集後のリダイレクト先
    def after_update_path_for(_resource)
      edit_contact_path
    end

    # GET /resource/sign_up
    # def new
    #   super
    # end

    # POST /resource
    # def create
    #   super
    # end

    # GET /resource/edit
    # def edit
    #   super
    # end

    # PUT /resource
    # def update
    #   super
    # end

    # DELETE /resource
    # def destroy
    #   super
    # end

    # GET /resource/cancel
    # Forces the session data which is usually expired after sign
    # in to be expired now. This is useful if the user wants to
    # cancel oauth signing in/up in the middle of the process,
    # removing all OAuth session data.
    # def cancel
    #   super
    # end

    # protected

    # If you have extra params to permit, append them to the sanitizer.
    # def configure_sign_up_params
    #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
    # end

    # If you have extra params to permit, append them to the sanitizer.
    # def configure_account_update_params
    #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
    # end

    # The path used after sign up.
    # def after_sign_up_path_for(resource)
    #   super(resource)
    # end

    # The path used after sign up for inactive accounts.
    # def after_inactive_sign_up_path_for(resource)
    #   super(resource)
    # end
  end
end
