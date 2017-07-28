class GiftsController < ApplicationController

    def index
        @gift = Gift.new
        if params[:search]
            guest = Guest.search(params[:search])
            if guest
                @wedding = Wedding.detail(guest.wedding_id)
                @gifts = Gift.where(:registry_id => @wedding.registry_id)
            else
                redirect_to registries_path
            end

        end
    end

    def new
        @gift = Gift.new
        registry = params['registry']
        @wedding = Wedding.where(:registry_id => registry)
    end

    def create
        if allowed_parameters
            gift = Gift.create(
                :name => allowed_parameters['name'], 
                :image => allowed_parameters['image'], 
                :price => allowed_parameters['price'],
                :source => allowed_parameters['source'],
                :registry_id => allowed_parameters['registry']
                )

                wedding = Wedding.where(:registry_id => allowed_parameters['registry']).first
                if gift
                    redirect_to wedding_path(wedding.id)
                    else
                    redirect_to new_gift_path
                end

        else
            redirect_to new_gift_path
        end

    end

    def show
        @gift = Gift.detail(params[:id])
    end

    # Updates the gift status and guest_id
    def claim
        guest = Guest.where(:name => params['gift']['guest']).first
        @gift = Gift.find(params['gift']['gift'])
        @gift.update_attributes(:guest_id => guest.id, :status => 'claimed' )
        redirect_to root_path
    end

    def allowed_parameters
        params.require(:gift).permit(:name, :image, :price, :source, :registry)
    end

end

