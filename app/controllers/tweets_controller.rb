class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new(params[:tweet])
  end

  def create
    @tweet = Tweet.create!(params[:tweet])
    @tweet.save
    flash[:notice] = "Tweet Successfully Created"
    respond_to do |format|
      format.html { redirect_to tweets_path }
      format.js
    end
  end

private
  def tweet_params
    params.require(:tweet).permit(:comment)
  end
end
