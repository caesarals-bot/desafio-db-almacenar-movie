class SeriesController < ApplicationController
    def show
        @serie = Serie.find(params[:id])
    end

    def index
        @series = Series.all
    end

    def new
        
    end

    def create
        
    end
end