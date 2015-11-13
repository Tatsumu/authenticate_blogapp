class TopsController < ApplicationController
	def index
		@users = User.all
		@posts = Post.find(:all, :order => "created_at DESC")
	end
end
