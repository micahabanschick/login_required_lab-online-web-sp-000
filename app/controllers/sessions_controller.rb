require 'pry'

class SessionsController < ApplicationController
  # before_action :require_login

  def new
  end

  def create
<<<<<<< HEAD
    # binding.pry
=======
    binding.pry
>>>>>>> 6583a554f99bf6ba7683138c2fbb65d0a1cc054e
    name = params[:name]
    if session[:name]
      redirect_to "/secrets/show"
    elsif name && name != ""
<<<<<<< HEAD
      session[:name] = name
=======
      current_user = name
>>>>>>> 6583a554f99bf6ba7683138c2fbb65d0a1cc054e
      redirect_to "/secrets/show"
    else
      redirect_to "/sessions/new"
    end
  end

  def destroy
    if current_user
<<<<<<< HEAD
      session[:name] = nil
=======
      current_user = nil
>>>>>>> 6583a554f99bf6ba7683138c2fbb65d0a1cc054e
    end
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
