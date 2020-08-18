module ContactInformationsHelper
  def choose_new_or_edit_contact_information
    if action_name == 'new' || action_name == 'create'
      confirm_contact_informations_path
    elsif action_name == 'edit'
      contact_information_path
    end
  end
end
