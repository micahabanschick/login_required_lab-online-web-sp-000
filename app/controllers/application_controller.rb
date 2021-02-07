class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
<<<<<<< HEAD
    session[:name] ? session[:name] : nil
=======
    session[:name]
>>>>>>> 6583a554f99bf6ba7683138c2fbb65d0a1cc054e
  end

end
