class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def create
    @articles = Article.create(article_params)
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def show
  end

  def update
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    @article.destroy
    redirect_to article_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
