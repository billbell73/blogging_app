class VotesController < ApplicationController

	def create
		#authenticate_user!
		# raise params.inspect
 		@post = Post.find params[:post_id]
 	  @post.votes.create(direction: params[:direction])
 		#redirect_to '/posts'
 		render json: { id: @post.id, votes: @post.votes_total }
	end

end
