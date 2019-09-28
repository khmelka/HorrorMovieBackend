class MoviesController < ApplicationController
    
    def index 
        @movies = Movie.all
        render json: @movies.to_json(:include => {
            :likes => {:only => [:number_of_likes]},
        })
    end 


    def create
        @movie = Movie.create(movies_params)
        render json: @movie.to_json(:include => {
            :likes => {:only => [:number_of_likes]},
        })
    
        

    end


    # def create
    #    @movie = Movie.new(movies_params)
    # end 

       
    private 

    def movies_params
        params.require(:movie).permit(:image, :title, :sum, :release_year)
    end 

end
