module ApplicationHelper
  def current_user_can?(action, klass)
    current_user && current_user.send("can_#{action}?".to_sym, klass)
  end

  def user_updateable_fields
    [:name, :email, :role, :password, :password_confirmation]
  end
end
