class MoviesController < ApplicationController
    
    def index 
        @movies = Movie.all
        render json: @movies.to_json(:include => {
            :likes => {:only => [:number_of_likes]},
        })
    end 


    # def create
    #     @movie = Movie.new
    #     render json: @movies.to_json(:include => {
    #         :likes => {:only => [:number_of_likes]},
    #     })
    
    #     @movie.save

    # end



       

end
