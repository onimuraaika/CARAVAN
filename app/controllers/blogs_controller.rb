class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
      @blog = Blog.new #「Blog.new」で空のモデルが生成される。
  end
  
  def create
      blog = Blog.new(blog_params) #モデル名がblog➡️アクション名はblog_params。
      blog.save
      redirect_to blogs_path #インデックスに飛ぶ。パス名は$rails routesで確認できる
  end

  def edit
  end
  
  private
  def blog_params
      params.require(:blog).permit(:title, :category, :body)
  end
  
end
