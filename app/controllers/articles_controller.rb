class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    redirect_to article_path(@article)
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def set_article
    @article = Article.find_by(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description)
  end

end
