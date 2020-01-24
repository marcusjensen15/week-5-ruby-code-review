class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if session[:user_id]
      # @current_user = User.find(session[:user_id])
      @current_user ||= User.find(session[:user_id])

    end
  end

  def authorize_admin
    if current_user.admin != true
      flash[:alert] = "you need to be an admin to do this action"
      redirect_to '/'
    end
  end

  def authorize
    if !current_user
      flash[:alert] = "You aren't authorized to visit that page."
      redirect_to '/'
    end
  end

##can build a authorize user method which will check to see if the current user exists before allowing them to view anything. Perhaps if they are not a user or an admin, they can only view the entire site. 
end
