class Api::PostsController < ApplicationController

  # def index
  #   @posts = Post.all
  #   if params[:tag]
  #     @posts = @posts.where("title iLIKE ?", "#{params[:tag]}")
  #   end
  #   render "index.json.jb"
  # end

  def index
    # @posts = Post.all
    @posts = Post.where(nil)
    @posts = Post.filter_by_tag(params[:tag]) if params[:status].present?
    render "index.json.jb"
  end

  def show
    @post = Post.find(params[:id])
    render "show.json.jb"
  end

  def create
    @post = Post.new(
      title: params[:title],
      text: params[:text]
    )
    if @post.save
      render "show.json.jb"
    else
      render json: { errors: @post.errors.full_messages }, status: 422
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:title] || @post.title
    @post.text = params[:text] || @post.text
    if @post.save
      render "show.json.jb"
    else
      render json: { errors: @post.errors.full_messages }, status: 422
    end
  end

  def delete
    if Post.find(params[:id]).destroy
      render json: { message: "The post has successfully been deleted"}
    end
  end

end