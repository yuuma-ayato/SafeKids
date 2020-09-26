module ReservationsHelper
  def search_child_name
    User.joins(children: :names)
        .where(id: current_user.id)
        .select("users.*, children.image, names.family_name, names.first_name")
  end
end
