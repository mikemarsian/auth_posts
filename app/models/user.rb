class User < ActiveRecord::Base
  include Authority::UserAbilities
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable


  enum role: [:author, :reviewer, :publisher, :admin]

  has_many :posts, foreign_key: :author_id

  def admin?
    self.admin.present?
  end
end
