class ChildrenController < ApplicationController
  before_action :set_child, only: %i[show edit update destroy]
  before_action :authenticate_user!
  PER = 5

  def index
    if current_user.user_type == "窓口担当者"
      @children = Child.all.page(params[:page]).per(PER)
    else
      @children = current_user.children.page(params[:page]).per(PER)
    end
  end

  def new
    @child = Child.new
    @child.names.build
  end

  def create
    @child = Child.new(child_params)
    @child.user_id = current_user.id
    if params[:back]
      render :new
    else
      if @child.save
        redirect_to @child, notice: t('view.create_child')
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
    if @child.update(child_params)
      redirect_to children_path, notice: t('view.edit_child')
    else
      render :edit
    end
  end

  def destroy
    @child.destroy
    redirect_to children_path, notice: t('view.delete_child')
  end

  private
  def child_params
    params.require(:child).permit(
      :gender,
      :other_gender,
      :birth,
      :family_name,
      :first_name,
      :family_name_kana,
      :first_name_kana,
      :image,
      :image_cache,
      names_attributes:[
        :family_name,
        :first_name,
        :family_name_kana,
        :first_name_kana ] )
    end

    def set_child
      @child = Child.find(params[:id])
    end
  end
