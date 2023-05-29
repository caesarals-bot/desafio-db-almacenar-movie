class MoviesController < ApplicationController
    
    def show
        @movie = Movie.find(params[:id])
    end

    def index
        @movies = Movie.all
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(params.require(:movie).permit(:name, :synopsis, :director))
        if @movie.save
            flash[:notice] = "movie was created successfully."
            redirect_to @movie
        else
            render 'new'
        end
    end
end