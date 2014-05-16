require 'sinatra'
require 'ostruct'
require 'time'
require 'yaml'

    # File.expand_path generates an absolute path
    # It also takes  a path as a second arg.  The
    # generated path is treated as being relative
    # to that path.
    # DON'T NEED THIS SECTION BECAUSE I'VE GIVEN UP ON EXTENDING
    # THE SINATRA BASE CLASS
    # :-(
    # set :root, File.expand_path('../../', __FILE__);
    
    # loop through blog_posts *.md files
    # the first two lines are in YAML format
    # ie
    # title: <blog post title>
    # date: <year_month_day>
Dir.glob "blog_posts/*.md" do |file|
    # parse meta data
    meta, content = File.read(file).split("\n\n", 2)

    # generate metadata obj
    article = OpenStruct.new YAML.load(meta)
    article.date = Time.parse article.date.to_s
    article.content = content
        
    # slug is basically the URL for the post
    # replace spaces with underscores
    # TODO -- add date into slug (in case two blog have the same titles
    article.slug = article.title.tr(' ', '_')
    # max length of the slug is 20 chars
    article.slug = article.slug[0,20]
    
    # route for each article
    get "/posts/#{article.slug}" do
         haml :post, :locals => { :article => article }
    end
        # puts "/posts/#{article.slug}"
end
=begin    
    get "/*" do
        haml :index
    end
=end
get "/index" do
    haml :index
end
