class Site

	def initialize
    config = Jekyll.configuration({
    	show_drafts: true
  	})
		@site = Jekyll::Site.new config
		@site.read
	end

	def posts
		@site.posts
	end

	def post published, name
  	posts.select{|post| post.name == name && post.published == published}.first
	end

end