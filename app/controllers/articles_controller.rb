# this is the controller called "Articles"
  # inside this controller are "actions" (ex: `index`, `show`)
    # by default, rails renders view (html/erb/slim file) matching name of "controller"/"action":
      # (ex: `views/${controller}/${action}.html.erb`)

class ArticlesController < ApplicationController

  def index # render views/articles/index.html.erb

    # fetch all article instances from database
    @articles = Article.all
    
  end

  def show # render views/articles/show.html.erb

    # finds specific article instance stored in @article that matches the route `(params[:id])`
    @article = Article.find(params[:id])

  end

  def new # render views/articles/new.html.erb

    # instantiate new article w/o saving
    @article = Article.new

  end

  def create

    # instantiate new article with title/body vals & try to save
      # (`article_params` is action below) 
    @article = Article.new(article_params)

    # if save successful, redirect to article page ("url/articles/#{@article.id}")"
    if @article.save
      redirect_to @article

    # if not, redisplay form ("views/articles/new.html.erb") + status code "422 Unprocessable Entity"
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit # render app/views/articles/edit.html.erb

    # fetch article from db & store in @article to use in form building
    @article = Article.find(params[:id])

  end

  def update

    # (re)fetch article db & try to update it w/ submitted form data filtered by article_params
    @article = Article.find(params[:id])

    # if update succeeds, redirect to article page
    if @article.update(article_params)
      redirect_to @article

    # if update fails, redisplay form (app/views/articles/edit.html.erb) + error msgs
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # delete article
  def destroy
    # fetch article
    @article = Article.find(params[:id])

    # call "destroy" on fetched article
    @article.destroy

    # redirect browser to root path w/ status code "303"
    redirect_to root_path, status: :see_other
  end

  private

    # submitted form data + route params passed into single "hash"
      # access via `params[:article][:title]`, `params[:article][:body]`, etc
    def article_params

      # filter params
      params.require(:article).permit(:title, :body, :status)

    end

end
