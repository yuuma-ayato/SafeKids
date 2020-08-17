module ReservationsHelper
  def choose_new_or_edit_reservation
    if action_name == 'new' || action_name == 'create'
      confirm_reservations_path
    elsif action_name == 'edit'
      reservation_path
    end
  end
end
