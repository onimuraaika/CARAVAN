class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end
  
  def create
    @blog = Blog.new #form_with(新規投稿用フォーム)を使うにはインスタンス変数が必要。新規データ登録用のblogインスタンスを、Blogモデルから作成。『Blog.new」で空のモデルが生成される。
  end

  def edit
  end
end
