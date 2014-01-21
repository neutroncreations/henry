require 'sinatra'
require 'haml' # if you use haml views

require 'henry/site'

$site = Site.new

class Henry < Sinatra::Base

	set :static, true                             # set up static file routing
  set :public_dir, File.expand_path('../public', __FILE__) # set up the static dir (with images/js/css inside)

  set :views,  File.expand_path('../views', __FILE__) # set up the views dir
  set :haml, { :format => :html5 }                    # if you use haml



  # Your "actions" go here…
  #
  get '/' do

    print $site.posts.inspect

    haml :'/index'
  end
end