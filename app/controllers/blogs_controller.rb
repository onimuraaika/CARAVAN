class BlogsController < ApplicationController

  def show #詳細画面表示アクション
      @blog = Blog.find(params[:id]) #URLにパラメータが設定されているから、params[:id]と記述することで記事のIDを取得できる。
  end
  
  def index #top画面に対応するのはindexアクション
      @blogs = Blog.all #全ての情報を取得して@blogsに入れる
  end

  def new #新規投稿用フォーム表示アクション
      @blog = Blog.new #「Blog.new」で空のモデルが生成される。
  end
  
  def create #送信された情報を保存するアクション
      blog = Blog.new(blog_params) #viewに渡す必要がないから普通の変数
      blog.save
      redirect_to blog_path(blog.id) #詳細表示画面に飛ぶ。パス名は$rails routesで確認できる
  end

  def edit
      @blog = Blog.find(params[])
  end
  
  private
  def blog_params
      params.require(:blog).permit(:title, :category, :body)
  end
  
end
