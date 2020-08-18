class ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :edit, :update, :destroy]

    def index
      @children = Child.all
    end

    def new
      @child = Child.new
    end

    def create
      @child = Child.new(child_params)
      @child.user_id = current_user.id
      if params[:back]
        render :new
      else
        if @child.save
          redirect_to reservations_path, notice: t('view.create_child')
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

    def confirm
      @child = Child.new(child_params)
      @child.user_id = current_user.id
      render :new if @child.invalid?
    end

  private
    def child_params
      params.require(:child).permit(:gender, :other_gender, :birth, :image)
    end

    def set_child
      @child = Child.find(params[:id])
    end
  end
