class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to tasks_path, notice: '他の人のページへアクセス出来ません'
    end
  end
end
