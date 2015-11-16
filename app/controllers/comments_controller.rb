class CommentsController < ApplicationController

	def create
		@posts =  Post.find(params[:post_id])
		@comments = @posts.comments.create(comment_params)
		redirect_to post_path(@posts.id)
	end
	
	def destroy
		@comments = Comment.find(params[:id])
		@comments.destroy
		redirect_to post_path(params[:post_id])
	end	

	private 
		def comment_params 
			params[:comment].permit(:body)
		end

end
