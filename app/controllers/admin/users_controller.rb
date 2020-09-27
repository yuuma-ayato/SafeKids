class Admin::UsersController < ApplicationController
  before_action :set_admin, only: %i[update show edit destroy]
  before_action :check_admin
  before_action :check_guest, only: %i[update destroy]

  def index
    @users = User.all.order(created_at: :DESC)
  end

  def show
    @reservations = @user.reservations
    if @user.user_type == "保護者"
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path, notice:"#{@user.email}を登録しました!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to admin_users_path(@user.id), notice: "編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to admin_users_path, notice:"ユーザーを削除しました！"
  end


  private

  def user_params
    params.require(:user).permit(:email, :password,
                                 :password_confirmation, :user_type, :admin)
    end

    def set_admin
      @user = User.find(params[:id])
    end

    def check_admin
      unless current_user.try(:admin?)
        redirect_to reservations_path, notice: "あなたは管理者ではありません"
      end
    end

    def check_guest
      if @user.email == 'guest@example.com' ||  'guest_clerk@example.com'
        redirect_to admin_users_path, alert: "ゲストユーザーの変更・削除はできません。"
      end
    end

  end
