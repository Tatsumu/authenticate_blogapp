class MypagesController < ApplicationController
	def index
		@posts = User.all
		@posts = Post.find(params[:id], :order => "created_at DESC")
	end
end
