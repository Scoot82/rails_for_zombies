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
      redirect_to root_url, notice: "New tweet added!"
    else
      render :new, notice: "Something went wrong!"
    end
  end
  
  def update
  end
  
  def destroy
  end

end
