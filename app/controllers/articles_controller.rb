class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :article_owner, only: [:edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = current_user.articles.build
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = current_user.articles.build(article_params)
   
    if @article.save
      redirect_to @article
      flash[:notice] = 'Article was successfully created.'
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def article_owner
    @article = Article.find(params[:id])
    unless @article.user.id == current_user.id
     flash[:notice] = 'Access denied as you are not owner of this article'
     redirect_to articles_path
    end
   end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  
    redirect_to articles_path
  end
   
  private
    def article_params
      params.require(:article).permit(:title, :content)
    end
end