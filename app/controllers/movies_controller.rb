class MoviesController < ApplicationController
     
    def index 
        @movies = Movie.all
        render json: @movies.to_json(:include => {
            :comments => [:content],
            :likes => [:number_of_likes]
        })
    end 
end
