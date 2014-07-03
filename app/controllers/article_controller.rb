class ArticleController < ApplicationController
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

  def article_params
    params.require(:article).permit(:id, :title, :content)
  end

end
