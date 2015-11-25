class PostsController < ApplicationController

	before_action :set_project, only:[:show, :edit, :update, :destroy]

	def index
		@posts = Post.all
	end

	def show
	end

	def new
		@posts = Post.new
	end

	def create
		@posts =  Post.new(post_params)
		if @posts.save
			redirect_to posts_path
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		if @posts.update(post_params)
			redirect_to user_post_path
		else
			render 'edit'
		end
	end

	def destroy
		@posts.destroy
		redirect_to user_posts_path
	end

	private

		def post_params
			params[:post].permit(:title, :description)
		end

		def set_project
			@posts = Post.find(params[:id])
		end
end
