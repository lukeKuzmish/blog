require 'sinatra'
require 'ostruct'
require 'time'
require 'yaml'
require 'rdiscount'

Dir.glob "blog_posts/*.md" do |file|
    # parse meta data
    meta, content = File.read(file).split("\n\n", 2)

    # generate metadata obj
    article = OpenStruct.new YAML.load(meta)
    article.date = Time.parse article.date.to_s
    article.content = RDiscount.new(content).to_html
        
    # slug is basically the URL for the post
    # replace spaces with underscores
    # TODO -- add date into slug (in case two blog have the same titles
    article.slug = (article.date.to_s[0,10] + '_' + article.title).tr(' ', '_')
    # max length of the slug is 20 chars
    article.slug = article.slug[0,20]
    
    # route for each article
    get "/posts/#{article.slug}" do
        haml :post, :locals => { :article => article }
    end
        puts "/posts/#{article.slug}"
    
end

get "/index" do
    haml :index
end
