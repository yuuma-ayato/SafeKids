module ParentsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_parents_path
    elsif action_name == 'edit'
      parent_path
    end
  end
end
