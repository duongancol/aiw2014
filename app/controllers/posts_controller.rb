class PostsController < ApplicationController

	#history of apple
	def about
		@posts = Post.all
	end

	#List all product of apple
	def portfolio

	end

	#List all services of apple
	def services
	end

	#show apple's leadership
	def team
	end
end
