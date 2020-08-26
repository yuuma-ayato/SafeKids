class DaycaresController < ApplicationController
  before_action :set_daycare, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @daycares = Daycare.all
  end

  def new
    @daycare = Daycare.new
  end

  def create
    @daycare = Daycare.new(daycare_params)
    if params[:back]
      render :new
    else
      if @daycare.save
        redirect_to @daycare, notice: t('view.create_daycare')
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
    if @daycare.update(daycare_params)
      redirect_to daycares_path, notice: t('view.edit_daycare')
    else
      render :edit
    end
  end

  def destroy
    @daycare.destroy
    redirect_to daycares_path, notice: t('view.delete_daycare')
  end

  private
  def daycare_params
    params.require(:daycare).permit(
      :name,
      :phone_number,
      :postal_code,
      :prefecture,
      :city,
      :adress,
      :building,
      :capacity )
      end

      def set_daycare
        @daycare = Daycare.find(params[:id])
      end
    end
