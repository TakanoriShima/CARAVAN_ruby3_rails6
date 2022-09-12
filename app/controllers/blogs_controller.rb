class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @blog = Blog.new  
  end
  
  def create

    # ---- ここからコードを書きましょう ---- #
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blogs_path
    # ---- ここまでのあいだにコードを書きましょう ---- #

  end

  def edit
  end
  
  # ---- 以下を追加してください ---- #
  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end
