class SeriesController < ApplicationController
    before_action :set_serie, only: [:show, :edit, :update, :destroy]
    
    def show
    end

    def index
        @series = Serie.all
    end

    def new
        @serie = Serie.new
    end

    def edit
    end

    def create
        @serie = Serie.new(serie_params)
        if @serie.save
            flash[:notice] = "Serie was created successfully."
            redirect_to @serie
        else
            render :new, status: 422
        end
    end

    def update
        if @serie.update(serie_params)
            flash[:notice] = "Movie was update successfully"
            redirect_to @serie
        else
            render 'edit'
        end
    end

    def destroy
        @serie.destroy
        redirect_to series_index_path
    end
    # refactorizamos el codigo con el metodo set_movie
    private
    def set_serie
        @serie = Serie.find(params[:id])
    end

    def serie_params
        params.require(:serie).permit(:name, :synopsis, :director)
    end
end