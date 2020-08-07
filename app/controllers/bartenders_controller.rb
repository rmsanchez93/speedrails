class BartendersController < ApplicationController
    # views: '/bartenders'
    def index
        @bartenders = Bartender.all
        # byebug
        # bartenders_path
    end

    def show
        @bartender = Bartender.find(params[:id])
    end

end
