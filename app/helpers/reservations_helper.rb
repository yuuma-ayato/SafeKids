# frozen_string_literal: true

module ReservationsHelper
  def search_child_name
    User.joins(children: :names)
        .where(id: current_user.id)
        .select('users.*, children.image, names.family_name, names.first_name')
  end

  def search_contacts
    User.joins(contacts: :names)
        .where(id: @reservation.user_id)
        .select(
          "users.*,
          names.family_name,
          names.first_name,
          names.family_name_kana,
          names.first_name_kana,
          contacts.phone_number,
          contacts.relation,
          contacts.other_relation"
        )
  end
end
