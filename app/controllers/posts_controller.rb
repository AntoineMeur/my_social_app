class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
        new_post = Post.create(name: params[:content])
        render json: { post: new_post }
      end

    def index
        @posts = Post.All
        render json: @posts
end
