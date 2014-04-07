class GuestsController < ApplicationController

  def index
    if current_user
      if current_user.is_student == "true"
        respond_to do |format|
          format.html { redirect_to '/profil_student' }
        end
      end
      if current_user.is_management == "true"
        respond_to do |format|
          format.html { redirect_to '/lista_cereri'}
        end
      end
      if current_user.is_admin == "true"
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

end
