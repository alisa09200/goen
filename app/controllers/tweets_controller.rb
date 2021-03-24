class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.save!
    #Tweet.create(tweet_params)
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :video, :text)
  end

end