class HomeController < ApplicationController

    def index
        @gifts = Gift.where( registry_id: 1)
    end
end

