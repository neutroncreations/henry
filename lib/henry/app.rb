require 'sinatra'
require 'haml'

require 'henry/site'

class Henry < Sinatra::Base

	set :static, true                             # set up static file routing
  set :public_dir, File.expand_path('../public', __FILE__) # set up the static dir (with images/js/css inside)

  set :views,  File.expand_path('../views', __FILE__) # set up the views dir
  set :haml, { :format => :html5 }                    # if you use haml



  # Your "actions" go here…
  #
  get '/' do

  	site = Site.new
    @posts = site.posts

    haml :index
  end

  get '/edit/:published/*' do

    @body_class = 'edit'

  	published = params[:published] == 'posts'

  	site = Site.new
  	@post = site.post(published, params[:splat].first)

  	haml :edit
  end

end