class UsersController < ApplicationController
  before_action :authenticate_user!
  # before_action :check_contact
  # before_action :check_child

  def show
    @user = User.find(params[:id])
    @contact = Contact.find(params[:id])
    @child = Child.find(params[:id])
    @name = Name.find(params[:id])
    unless @user == current_user
      redirect_to tasks_path, notice: '他の人のページへアクセス出来ません'
    end
  end
end

# private
# def check_contact
#   if @contact.nil?
#     redirect_to new_contact_path, notice: "連絡先が未入力です。"
#   end
# end
#
# def check_child
#   if @child.nil?
#     redirect_to new_child_path, notice: "お子様情報が未入力です。"
#   end
# end
