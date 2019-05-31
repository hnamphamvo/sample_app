# frozen_string_literal: true

# :nodoc:
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find_by id: params[:id]
    return if @user

    flash.now[:danger] = t "errors.nil_user"
    redirect_to root_path
  end

  def create
    @user = User.new user_params
    if @user.save
      log_in @user
      flash.now[:success] = t "label.welcome"
      redirect_to @user
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit :name, :email,
                                 :password, :password_cormfirmation
  end
end
