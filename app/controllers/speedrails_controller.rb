class SpeedrailsController < ApplicationController
    def index 
        @speedrails = SpeedRail.all
    end
    def show
        @speedrail = SpeedRail.find(params[:id])

        # byebug
    end
end
