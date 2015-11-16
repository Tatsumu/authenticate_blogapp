class TopsController < ApplicationController
	def index
		@user = User.all
		# @posts = Post.order("created_at DESC")
		@posts = Post.all
	end
end
