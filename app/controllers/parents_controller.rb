class ParentsController < ApplicationController
before_action :set_parent, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!

  def index
    @parents = Parent.all
  end

  def new
    @parent = Parent.new
  end

  def first_time
    @parent = Parent.new
  end

  def create
    @parent = Parent.new(parent_params)
    @parent.user_id = current_user.id
    if params[:back]
      render :new
    else
      if @parent.save
        redirect_to @parent, notice: t('view.create_parent')
      else
        render :new
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @parent.update(parent_params)
      redirect_to parents_path, notice: t('view.edit_parent')
    else
      render :edit
    end
  end

  def destroy
    @parent.destroy
    redirect_to parents_path, notice: t('view.delete_parent')
  end

private
  def parent_params
    params.require(:parent).permit(
      :family_name,
      :first_name,
      :family_name_kana,
      :first_name_kana,
      :relation,
      :phone_number,
      :postal_code,
      :prefecture,
      :city,
      :adress,
      :building,
      :image,
      :image_cache,
      children:[
        :gender,
        :birth,
        :image,
        :family_name,
        :first_name,
        :family_name_kana,
        :first_name_kana ])
  end

  def set_parent
    @parent = Parent.find(params[:id])
  end
end
