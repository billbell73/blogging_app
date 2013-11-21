class Post < ActiveRecord::Base

	has_many :comments

	has_many :votes

	def votes_total
		return 0 if (upvotes + downvotes).empty?
		upvotes.size - downvotes.size
	end
		
	def upvotes
		votes.up
	end

	def downvotes
		votes.down
	end
	
end
