module ChildrenHelper
  def choose_new_or_edit_child
    if action_name == 'new' || action_name == 'create'
      confirm_children_path
    elsif action_name == 'edit'
      child_path
    end
  end
end
