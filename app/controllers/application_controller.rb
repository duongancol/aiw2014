class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :init

  def init
  	# raise "Stop"
  end

  def index
  	if params[:search]
  		@posts = Post.search(params[:search]).order("created_at DESC")
  	else
  		@posts = Post.all.order('created_at DESC')
	end	
  end

end
