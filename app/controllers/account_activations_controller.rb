# frozen_string_literal: true

# :nodoc:
class AccountActivationsController < ApplicationController
  def edit
    user = User.find_by email: params[:email]
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activate
      log_in user
      flash[:success] = t "activated.success"
      redirect_to user
    else
      flash[:danger] = t "activated.fail"
      redirect_to root_path
    end
  end
end
