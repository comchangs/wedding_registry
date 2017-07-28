class GuestsController < ApplicationController

    def new
        @guest = Guest.new
    end

    def create
        guest = Guest.create(:name => allowed_parameters['name'], :wedding_id => allowed_parameters['wedding'] )
        if guest
            redirect_to wedding_path(allowed_parameters['wedding'])
        else
            redirect_to new_guest_path
        end
    end

    private

  def allowed_parameters
    params.require(:guest).permit(:name, :wedding)
  end



end

