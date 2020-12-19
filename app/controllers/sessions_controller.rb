require 'pry'

class SessionsController < ApplicationController
  # before_action :require_login

  def new
  end

  def create
    # binding.pry
    name = params[:name]
    if session[:name]
      redirect_to "/secrets/show"
    elsif name && name != ""
      current_user = name
      redirect_to "/secrets/show"
    else
      redirect_to "/sessions/new"
    end
  end

  def destroy
    if current_user
      current_user = nil
    end
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
