class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    if params[:back]
      render :new
    else
      if @reservation.save
        redirect_to @reservation, notice: t('view.create_reservation')
      else
        render :new
      end
    end
  end

  def show
    @comments = @reservation.comments
    @comment = @reservation.comments.build
  end

  def edit
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to reservations_path, notice: t('view.edit_reservation')
    else
      render :edit
    end
  end

  def destroy
    @reservation.destroy
    redirect_to reservations_path, notice: t('view.delete_reservation')
  end

  private
  def reservation_params
    params.require(:reservation).permit(:date, :reason, :other_reason, :status, :daycare_to_use)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

end
