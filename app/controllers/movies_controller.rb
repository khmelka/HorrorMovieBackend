class MoviesController < ApplicationController
    # before_action :set_movie, only: [:show, :destroy]
    
    def index 
        @movies = Movie.all
        render json: @movies.to_json(:include => {
            :likes => {:only => [:number_of_likes]},
        })
    end 

    def show
        render json: @movie
    end 


    def create
        @movie = Movie.create(movies_params)
        render json: @movie.to_json(:include => {
            :likes => {:only => [:number_of_likes]},
        })
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
    end 
       
    private 

    # def set_movie
    #     @movie = Movie.find(params[:id])
    # end 

    def movies_params
        params.require(:movie).permit(:image, :title, :sum, :release_year)
    end 

end
