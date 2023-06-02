class SeriesController < ApplicationController
    def show
        @serie = Serie.find(params[:id])
    end

    def index
        @series = Serie.all
    end

    def new
        @serie = Serie.new
    end

    def edit
        @serie = Serie.find(params[:id])
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

    def update
        @serie =Serie.find(params[:id])
        if @serie.update(params.require(:serie).permit(:name, :synopsis, :director))
            flash[:notice] = "Movie was update successfully"
            redirect_to @serie
        else
            render 'edit'
        end
    end
end