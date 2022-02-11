# this the the controller called "Articles"

# inside this controller are "actions" (ex: `index`, `show`)

  # by default (aka when an action doesn't explicitly render a "view" or trigger an http response), rails renders the "view" (html/erb/slim file) that matches the name of the "controller"/"action":
    # (ex: `views/${controller}/${action}.html.erb`)

class ArticlesController < ApplicationController

  # `def index` renders views/articles/index.html.erb

  def index

    # this is a specific "action", which fetches all article instances from database

    @articles = Article.all
    
  end

  # `def show` renders views/articles/show.html.erb

  def show

    # finds specific article instance stored in @article that matches the route `(params[:id])`

    @article = Article.find(params[:id])

  end

  # `def new` renders views/articles/new.html.erb

  def new

    # instantiates new article but doesn't save it

    @article = Article.new

  end

  def create

    # instantiates new article with values for title/body
      # `...` are dummy values that'll be replaced

    @article = Article.new(title: "...", body: "...")

    # save new article

    # if save successful, redirect to article page ("http://localhost:3000/articles/#{@article.id}")"

    if @article.save
      redirect_to @article

    # if not, redisplay form (render "views/articles/new.html.erb") + status code "422 Unprocessable Entity".

    else
      render :new, status: :unprocessable_entity
    end
    
  end

end
