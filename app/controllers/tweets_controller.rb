class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
	end 
	
	def create
		@tweet = Tweet.new
		@tweet.content = params [:tweet][:content]
		@tweet.posted_on = DateTime.now
		@tweet.user = User.current_user

		@tweet.save!
		redirect_to :action => :index
	end

	def index
		@tweets = User.current_user.tweets
	end
end
