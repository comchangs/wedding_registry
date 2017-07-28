class WeddingsController < ApplicationController

    def index
        if params[:search]
            @wedding = Wedding.search(params[:search])
            if @wedding
                redirect_to wedding_path(@wedding.id)
            else
                redirect_to new_wedding_path
            end
        end
    end

    def new
        @wedding = Wedding.new
    end

    def create
        if allowed_parameters
            # Create a new wedding
            new_wedding = Wedding.create(:name => allowed_parameters['name'])
            # Create a new registry
            registry = Registry.create(:wedding_id => new_wedding.id)
            # Update
            new_wedding.update_attribute(:registry_id, registry.id)
            redirect_to new_gift_path(registry: registry.id)
        else
            redirect_to new_wedding_path
        end
    end

    def show
        @wedding = Wedding.detail(params[:id])
        # Show the available gifts first
        @gifts =  Wedding.get_gifts(@wedding.id).sort_by{ |gift| gift['status']}
        # Sort guests by name
        @guests = Wedding.get_guests(@wedding.id).sort_by{ |guest| guest['name']}
    end


 private

  def allowed_parameters
    params.require(:wedding).permit(:name)
  end



end

