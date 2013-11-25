module PostsHelper

	def vote_button(post, direction, link_text)
    button_to link_text, post_votes_path(post, direction: direction), remote: true
  end
  
end
