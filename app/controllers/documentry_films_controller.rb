class DocumentryFilmsController < ApplicationController
    def show
        @documentryfilm = DocumentryFilm.find(params[:id])
    end

    def index
        @documentryfilms = DocumentryFilm.all
    end

    def new
        @documentryfilm = DocumentryFilm.new
    end

    def create
        @documentryfilm = DocumentryFilm.new(params.require(:documentryfilm).permit(:name, :synopsis, :director))
        if @documentryfilm.save
            flash[:notice] = "Documentary was created successfully."
            redirect_to @documentryfilm
        else
            render :new, status: 422
        end
    end
end