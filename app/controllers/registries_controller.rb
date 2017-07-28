class RegistriesController < ApplicationController

    def index
        @weddings = Wedding.all
    end

end

