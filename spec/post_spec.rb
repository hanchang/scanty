require File.dirname(__FILE__) + '/base'

describe Post do
	before do
		@post = Post.new
	end

	it "has a url in simplelog format: /past/2008/10/17/my_post/" do
		@post.created_at = Time.now
		@post.slug = "my_post"
		@post.url.should == '/past/2008/10/22/my_post/'
	end

	it "produces html from the markdown body" do
		@post.body = "* Bullet"
		@post.body_html.should == "<ul>\n<li>Bullet</li>\n</ul>\n\n"
	end
end
