class UsersController < ApplicationController
  def new
    @ada = User.find_by(email: "ada.lovelace@gmail.com")
    @alan = User.find_by(email: "alan.turing@gmail.com")
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login!(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end
end
