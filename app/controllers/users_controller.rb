class UsersController < ApplicationController

  def new
		@user = User.new
  end

  def create
		@user = User.new
		@user.username = params[:user][:username]
		@user.password = params[:user][:password]
		@user.save!
		redirect_to :action => :index
  end

	def index
		@users = User.all	
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])	
	end

	def update
		@user = User.find(params[:id])
		@user.username = params[:user][:username]
		@user.password = params[:user][:password]
		@user.save!
		redirect_to :action => :index	
	end
	
	def destroy
		@user = User.find(params[:id])
		@user.destroy!
		redirect_to :action => :index	
	end

end
