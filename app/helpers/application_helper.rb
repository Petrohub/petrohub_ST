module ApplicationHelper
  def user_signed_in_and_approved?
    user_signed_in? && current_user.approved?
  end
end
