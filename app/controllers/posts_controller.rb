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

end
