class LikesController < ApplicationController
  def index
    @likes = Like.all
    render json: @likes
  end

  def create
    @like = Like.new
    @like.number_of_likes = params[:number_of_likes]
    @like.movie_id = params[:movie_id]
    @like.save
  end
end
