class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = current_user.tweets.create(tweet_params)

    if @tweet.save
      flash[:notice] = "Tweet successfully submitted"
      respond_to do |format|
        format.html {redirect_to root_path}
        format.js
      end
    else
      render :new
    end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to root_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:body)
  end

end
