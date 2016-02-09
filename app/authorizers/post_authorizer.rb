class PostAuthorizer < ApplicationAuthorizer
  def self.creatable_by?(user)
    user.author?
  end

  def self.manageable_by(user)
    user.reviewer? || user.publisher? || user.admin?
  end

  # this post is manageable by its author, in addition to reviewers, publishers and admins
  def manageable_by(user)
    self.author == user
  end
end