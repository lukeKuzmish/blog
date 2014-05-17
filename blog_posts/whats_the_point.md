title: Sinatra cha cha cha cha - Why I'm Bothering With This
date: 2014-05-16
tags: sinatra, ruby, web development, workflow

I decided this morning (5/16/2014) after watching 2 minutes of a Ruby
conference talk that was of almost no immediate use to me that I should try to
do something worthwhile instead.  I had begun working through [Michael Hartl's
Rails Tutorial](http://www.railstutorial.org/book) two nights prior and while
I certainly do plan on getting back to it very soon (anybody out there want
to hold me to that?), I was interested in working with Sinatra.  Why?  Well,
first I liked how lightweight it is.  The fact that you can get a simple
site up and running with 6 lines of code is pretty sexy (ugh, that makes me
cringe to type, but I couldn't think of a better word for it).  It means
I can get something from idea to existence with less work.  Plus it's a DSL
for Ruby, which means I get to acquire a better working knowledge of the
language before I get deep into Rails.

Now, a blog is a *little* generic as far as a project goes, but I don't have
a blog.  I don't want to just sign up for one because that means another login
to remember and less control over how it's administered.  I'd have to learn to
write the theme for the blog engine.  Perhaps a valuable skill if I were
interested in becoming a WordPress dev, but that's not something I'm directly
looking to do.

To make the blog, I've been using plenty of different resources.  A few of the
major ones:

* [Sinatra: Up and Running (2011)](http://shop.oreilly.com/product/0636920019664.do)
* [An Introduction to Haml and Sinatra](http://code.tutsplus.com/tutorials/an-introduction-to-haml-and-sinatra--net-14858)
* [Jump Start Sinatra (2013)](http://www.sitepoint.com/store/jump-start-sinatra/)
* [Haml Tutorial & Documentation](http://haml.info/)
* [Sinatra Documentation](http://sinatrarb.com)
* [Mashery Markdown Cheat Sheet](http://support.mashery.com/docs/read/customizing_your_portal/Markdown_Cheat_Sheet)

The blog workflow is pretty simple: Sinatra app using Haml to render the views
where the blog posts are written in Markdown.  I chose Markdown because I waste
far too much time on reddit where a modified version of Markdown is used for
comments, Github uses it, it's fairly simple, it frees me from a database (for
now, see below as to why that might change), and it was the approach that
*Sinatra: Up and Running* used.

My personal workflow is simple as well.  I'm using a Samsung Chromebook where
I ssh into my [123systems hosted VPS](http://123systems.net).  I use the Google
made Secure Shell app and I am running tmux to... well, what does anyone use 
tmux for?  Code and blog posts are written using vim with no plugins or
scripts and a very basic .vimrc since I'm a super newbie who only made it
through vimtutor this week.  

As with any web development learning, there's plenty of Google-fu used to
solve pesky little problems with Linux/git/[github](http://github.com/lukeKuzmish)/vim/tmux. 
It would be interesting to see just how much time is spent in vim (the editor I'm forcing
myself to get the hang of so that I never need to leave the terminal) and how
much time is spent in Chrome searching or reading.

I have invited folks to watch this live learning experience by checking where
I'm at by hitting up the blog url and checking my updates at Github.  I already
got one useful comment (someone wanting to insult me in the comments section
which of course doesn't exist but now it seems I'll have to implement).

What's next?

* Learn a CSS pre-processor and style the blog
* Create more views (about, contact, others?)
* Allow users to leave comments
* Get blog ready for stable production (start on boot, check for security issues)

If you have any comments or questions or insults or encouragement (in the form
of currency or Capri Sun coupons), contact me at luke@lukekuzmish.com.
