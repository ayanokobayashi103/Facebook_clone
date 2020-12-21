module FcbooksHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create' || action_name == 'confirm'
      confirm_fcbooks_path
    elsif action_name == 'edit'
      fcbook_path
    end
  end
end
