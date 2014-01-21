class Site

	def initialize
    config = Jekyll.configuration({})
		@site = Jekyll::Site.new config
	end

	def posts
		@site.posts
	end

end