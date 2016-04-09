class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(params[:article])
    puts @article

    @article.save
    redirect_to @article
  end
end
