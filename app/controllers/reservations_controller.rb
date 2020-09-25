class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show edit update destroy]
  before_action :authenticate_user!
  PER = 5

  def index
    @q = Reservation.ransack(params[:q])
    if current_user.user_type == "保護者"
      @reservations = current_user.reservations.page(params[:page]).per(PER)
    elsif current_user.user_type == "保育士"
      @reservations = @q.result.where(status: "本予約").page(params[:page]).per(PER)
    else
      @reservations = @q.result(distinct: true).page(params[:page]).per(PER)
    end
  end

  def new
    @reservation = Reservation.new
    @child_name = User.joins(children: :names)
                      .where(id: current_user.id)
                      .select("users.*, children.image, names.family_name, names.first_name")
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
    @contacts = User.joins(contacts: :names)
                    .where(id: @reservation.user_id)
                    .select(
                      "users.*,
                      names.family_name,
                      names.first_name,
                      names.family_name_kana,
                      names.first_name_kana,
                      contacts.phone_number,
                      contacts.relation,
                      contacts.other_relation")
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
    params.require(:reservation).permit(:date, :reason, :other_reason, :status, :daycare_to_use, :child_name)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

end
