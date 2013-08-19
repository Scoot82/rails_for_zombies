class TweetsController < ApplicationController
  
  def index
  end
  
  def show
    @tweet = Tweet.find(params[:id])
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def edit
    @tweet = Tweet.find(params[:id])
  end
  
  def create
    @tweet = Tweet.new(params[:tweet])
    
    if @tweet.save
      flash[:notice] = "New tweet added!"
      redirect_to root_path
    else
      flash[:notice] = "There was a problem"
      render "new"
    end
  end
  
  def update
  end
  
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to root_path
  end

end
