class UserAuthorizer < ApplicationAuthorizer
  # all actions on users are allowed for admins
  def self.default(adjective, user)
    user.admin?
  end

  def posts_showable(user)
    current_user == user
  end
end