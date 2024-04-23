class PostsController < ActionController::Base
    def index
        # post = Post.create({title: "t1", content: "content1"}) 
        # post = Post.find(1)
        post = Post.all
        puts "\n++++ #{post.inspect} ++++\n\n"
    end
end
