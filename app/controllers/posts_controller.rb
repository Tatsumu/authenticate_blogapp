class PostsController < ApplicationController

	def index
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
		@post =  Post.new(post_params)
		if @post.save
			redirect_to posts_path
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		if @post.update(post_params)
			redirect_to posts_path
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_path
	end
end
