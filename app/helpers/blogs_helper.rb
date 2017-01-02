module BlogsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_blogs_path
    elsif action_name == 'edit'
      blog_path
    end
  end
  def get_user_email(user_id)
    if user_id != nil
      User.find(user_id).email
#      users = User.all
#      users.each do |user|
#        if user.id == user_id
#          user.name
#        end
#      end
    end
  end
end