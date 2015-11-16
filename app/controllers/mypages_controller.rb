class MypagesController < ApplicationController
	

	def index
		@posts = Post.all
	end
end
