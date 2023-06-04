class MoviesController < ApplicationController
    before_action :set_movie, only: [:show, :edit, :update, :destroy]
    def show
    end

    def index
        @movies = Movie.all
    end

    def new
        @movie = Movie.new
    end

    def edit
    end

    def create
        @movie = Movie.new(movie_params)
        if @movie.save
            flash[:notice] = "movie was created successfully."
            redirect_to @movie
        else
            render :new, status: 422
        end
    end

    def update
        if @movie.update(movie_params)
            flash[:notice] = "Movie was update successfully"
            redirect_to @movie
        else
            render 'edit'
        end
    end

    def destroy
        @movie.destroy
        redirect_to movies_path
    end
    # refactorizamos el codigo con el metodo set_movie
    private
    def set_movie
        @movie = Movie.find(params[:id])
    end

    def movie_params
        params.require(:movie).permit(:name, :synopsis, :director)
    end
end