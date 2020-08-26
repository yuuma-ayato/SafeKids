class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @contact = Contact.find(params[:id])
    @child = Child.find(params[:id])
    @name = Name.find(params[:id])
  end
end
