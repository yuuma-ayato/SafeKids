# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    redirect_to tasks_path, notice: '他の人のページへアクセス出来ません' unless @user == current_user
  end
end
