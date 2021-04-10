class ReservationsController < ApplicationController

  def index
    @tweet = Tweet.find(params[:tweet_id])
    #@reservations = @tweet.reservations.includes(:user)
    @reservations = Reservation.all
    #@reservation = @tweet.reservations.find(params[:tweet_id])
    #@reservation = Reservation.find(params[:tweet_id])
  end

  def new
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    @tweet = Tweet.find(params[:tweet_id])
    @reservation = Reservation.new
  end

  def create
    Reservation.create(reservation_params)
    redirect_to root_path
    #redirect_to "/tweets/#{reservation.tweet.id}"
  end

  def show
    @tweet = Tweet.find(params[:tweet_id])
    @reservation = Reservation.find(params[:id])
  end

  def destroy
    #@tweet = Tweet.find(params[:tweet_id])
    #@reservation = Reservation.find(params[:id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :content, :start_time).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end

end

