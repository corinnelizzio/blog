class ArticleController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :update, :destroy, :edit]

  def index
    @articles = Article.all
  end

  def show
    @article =  Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save!
      redirect_to @article
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes!(article_params)
      redirect_to @article
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy!
      redirect_to action: :index
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:id, :title, :date, :content)
  end

end
