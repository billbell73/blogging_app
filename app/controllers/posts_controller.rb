class PostsController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]

	def index
		 @posts = Post.all
	end

	def new
		# authenticate_user!
		@post = Post.new

	end

	def create
		# authenticate_user!
		@post = Post.create(params[:post].permit(:title, :body))
		flash[:notice] = 'Post saved'
		redirect_to @post
		# redirect_to post_path(@post)
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find params[:id]
	end

	def update
		@post = Post.find params[:id]
		puts "params[:id]: #{params[:id]}"
		@post.update(params[:post].permit(:title, :body))
		redirect_to '/posts'
	end

	def destroy
	  @post = Post.find(params[:id])
	  @post.destroy
	  redirect_to posts_path
	end

	def delete
		@post = Post.find(params[:id])
	end

end
