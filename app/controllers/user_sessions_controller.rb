require 'json'
require 'open-uri'

class UserSessionsController < ApplicationController
  respond_to :html

  # omniauth callback method
  def create
    omniauth = env['omniauth.auth']
    logger.debug "+++ #{omniauth}"

    user = User.find_by_uid(omniauth['uid'])
    if not user
      # New user registration
      user = User.new(:uid => omniauth['uid'])
    end    
    user.first_name = omniauth['extra']['first_name']
    user.last_name  = omniauth['extra']['last_name']
    user.email  = omniauth['extra']['email']
    user.is_student  = omniauth['extra']['student']
    user.is_teacher  = omniauth['extra']['teacher']
    user.is_management  = omniauth['extra']['management']
    user.is_admin  = omniauth['extra']['admin']
    user.token = omniauth['credentials']['token']

    extra_fields = JSON.parse(open("http://fmi-autentificare.herokuapp.com/users/#{user.uid}.json?oauth_token=#{user.token}").read)

    user.date_birth = extra_fields['user']['date_birth']
    user.place_birth = extra_fields['user']['place_birth']
    user.father_first_name = extra_fields['user']['father_first_name']
    user.mother_first_name = extra_fields['user']['mother_first_name']
    user.ic_serie = extra_fields['user']['ic_serie']
    user.ic_number = extra_fields['user']['ic_number']
    user.address = extra_fields['user']['address']
    user.cnp = extra_fields['user']['cnp']
    user.specialization = extra_fields['user']['group']['specialization']
    user.year = extra_fields['user']['group']['year']

    user.save

    # Currently storing all the info
    session[:user] = omniauth

    flash[:notice] = "Successfully logged in"
    redirect_to root_path
  end

  # Omniauth failure callback
  def failure
    flash[:notice] = params[:message]
  end

  # logout - Clear our rack session BUT essentially redirect to the provider
  # to clean up the Devise session from there too !
  def destroy
    session[:user] = nil

    #flash[:notice] = 'You have successfully signed out!'
    redirect_to "#{CUSTOM_PROVIDER_URL}/users/sign_out"
  end

end