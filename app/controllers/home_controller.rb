class HomeController < ApplicationController
	def index
		@posts = Post.order("created_at desc").reject{|p| p.user_id == 1}
	end
end
