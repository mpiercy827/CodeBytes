class Api::UsersController < ApplicationController
  before_action :redirect_unless_logged_in

  def show
    @user = current_user
  end
end
