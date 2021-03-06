class PostsController < ApplicationController

	#history of apple
	def about
		@posts = Post.where("category_id = 3 ")
	end

	def about_show
		@post = Post.find(params[:id])
	end

	#show apple's leadership
	def team
		@teams = Post.where("category_id = 5")
	end

	def team_show
		@team = Post.find(params[:id])
	end
	#List all product of apple
	def portfolio
		@products = Post.where("category_id = 4")
	end

	def portfolio_show
		@product = Post.find(params[:id])
	end

	#List all services of apple
	def services
	end

	def search
	  	if params[:search]
	  		@products = Post.search(params[:search])
	  	else
	  		@products = Post.all.order('created_at DESC')
		end	
	end

	# GET /screencasts
	  # GET /screencasts.json
	  def index
	  	if params[:title]
		    render json: Post.search(params[:title])
  		else
	    	render json: Post.all
    	end
	  end

	  # GET /Posts/:id
	  # GET /Posts/:id.json
	  def show
	  	render json: Post.find(params[:id])
	  end

	  def api_search
	  end

end
