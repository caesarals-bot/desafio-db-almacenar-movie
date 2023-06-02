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

    def edit
        @documentryfilm = DocumentryFilm.find(params[:id])
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

    def update
        @documentryfilm = DocumentryFilm.find(params[:id])
        if @documentryfilm.update(params.require(:documentryfilm).permit(:name, :synopsis, :director))
            flash[:notice] = "Documentary was update successfully"
            redirect_to @documentryfilm
        else
            render 'edit'
        end
    end
end