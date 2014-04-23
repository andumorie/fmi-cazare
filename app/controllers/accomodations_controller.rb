class AccomodationsController < ApplicationController
  before_filter :login_required

  respond_to :html

  def index

  end

  def student_profile

  end

  def new
    # GET /accomodations/creeaza_cerere
    @camine = Dorm.all
  end

  def create
    # POST /accomodations
    cerere = Accomodation.new


    if (cerere.save)
      @current_user.accomodation = cerere
      @current_user.save
    end
    
  end

  def verified_results

  end

  def decision

  end

  def documents

  end

end
