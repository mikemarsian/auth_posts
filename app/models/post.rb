class Post < ActiveRecord::Base
  include Authority::Abilities

  belongs_to :author, class_name: 'User', foreign_key: :author_id

  scope :no_author, -> { where("author_id IS NULL") }
end
