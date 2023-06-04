class DocumentryFilmsController < ApplicationController
    before_action :set_documentary, only: [:show, :edit, :update, :destroy]
    def show
    end

    def index
        @documentryfilms = DocumentryFilm.all
    end

    def new
        @documentryfilm = DocumentryFilm.new
    end

    def edit
    end

    def create
        @documentryfilm = DocumentryFilm.new(documentary_params)
        if @documentryfilm.save
            flash[:notice] = "Documentary was created successfully."
            redirect_to @documentryfilm
        else
            render :new, status: 422
        end
    end

    def update
        if @documentryfilm.update(documentary_params)
            flash[:notice] = "Documentary was update successfully"
            redirect_to @documentryfilm
        else
            render 'edit'
        end
    end

    def destroy
        @documentryfilm.destroy
        redirect_to documentry_films_path
    end

    # refactorizamos el codigo con el metodo set_documentary y documentaryparams
    private
    def set_documentary
        @documentryfilm = DocumentryFilm.find(params[:id])
    end

    def documentary_params
        params.require(:documentryfilm).permit(:name, :synopsis, :director)
    end
end