class GuestsController < ApplicationController

  def index
    if get_current_user
      if get_current_user.is_student == "true"
        respond_to do |format|
          format.html { redirect_to '/creeaza_cerere' }
        end
      end
      if get_current_user.is_management == "true"
        respond_to do |format|
          format.html { redirect_to '/lista_cereri'}
        end
      end
      if get_current_user.is_admin == "true"
        respond_to do |format|
          format.html { redirect_to '/lista_cereri_admin'}
        end
      end
    else
      respond_to do |format|
        format.html # index.html.erb
      end
    end
  end

  def ajutor
    get_current_user
  end

end
