class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def login_required
    if !get_current_user
      respond_to do |format|
        format.html  {
          redirect_to '/auth/autentificare/'
        }
        format.json {
          render :json => { 'error' => 'Access Denied' }.to_json
        }
      end
    end
  end

  def get_current_user
    if session[:user]
      @current_user = User.find_by_uid(session[:user]['uid'])
    else
      return nil
    end
  end

end
