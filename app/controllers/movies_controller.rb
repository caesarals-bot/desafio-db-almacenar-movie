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

    def edit
        @movie = Movie.find(params[:id])
    end

    def create
        @movie = Movie.new(params.require(:movie).permit(:name, :synopsis, :director))
        if @movie.save
            flash[:notice] = "movie was created successfully."
            redirect_to @movie
        else
            render :new, status: 422
        end
    end

    def update
        @movie = Movie.find(params[:id])
        if @movie.update(params.require(:movie).permit(:name, :synopsis, :director))
            flash[:notice] = "Movie was update successfully"
            redirect_to @movie
        else
            render 'edit'
        end
    end
end