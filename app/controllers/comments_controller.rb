class CommentsController < ApplicationController

	def new
		@post = Post.find(params[:post_id])
	end

	def create
		@post = Post.find(params[:post_id])

		@post.comments.create(params[:comment].permit(:body))
		flash[:notice] = 'Comment saved'
		redirect_to '/posts'
	end

end
