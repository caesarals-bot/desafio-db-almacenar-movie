class SeriesController < ApplicationController
    def show
        @serie = Serie.find(params[:id])
    end

    def index
        @series = Serie.all
    end

    def new
        @serie = Movie.new
    end

    def create
        @serie = Serie.new(params.require(:serie).permit(:name, :synopsis, :director))
        if @serie.save
            flash[:notice] = "Serie was created successfully."
            redirect_to @serie
        else
            render :new, status: 422
        end
    end
end