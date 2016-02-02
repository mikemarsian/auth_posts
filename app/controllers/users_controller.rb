class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:posts]

  def posts
    @posts = current_user.posts
  end

end