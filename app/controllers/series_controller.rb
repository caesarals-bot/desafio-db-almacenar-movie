class SeriesController < ApplicationController
    def show
        @serie = Serie.find(params[:id])
    end

    def index
        @series = Movie.all
    end
end