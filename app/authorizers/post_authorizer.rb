class PostAuthorizer < ApplicationAuthorizer
  def self.creatable_by?(user)
    user.author?
  end
end