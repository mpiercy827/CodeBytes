class SessionsController < ApplicationController
  before_action :redirect_unless_logged_in, only: :destroy
  def new
    @ada = User.find_by(email: "ada.lovelace@gmail.com")
    @alan = User.find_by(email: "alan.turing@gmail.com")
  end

  def create
    @user = User.find_by_credentials(
      user_params[:email],
      user_params[:password]
    )
    if @user
      login!(@user)
    else
      flash.now[:errors] = ["Invalid Login Information"]
      render :new
    end
  end

  def destroy
    logout!
  end
end
