# this the the controller called "Articles"

# inside this controller are "actions" (ex: `index`, `show`)

  # by default (aka when an action doesn't explicitly render a "view" or trigger an http response), rails renders the "view" (html/erb/slim file) that matches the name of the "controller"/"action":
    # (ex: `app/views/${controller}/${action}.html.erb`)

class ArticlesController < ApplicationController

  # by default, `def index` renders app/views/articles/index.html.erb

  def index

    # this is a specific "action", which fetches all article instances from database

    @articles = Article.all
    
  end

  # by default `def show` renders app/views/articles/show.html.erb

  def show

    # finds specific article instance stored in @article that matches the route `(params[:id])`

    @article = Article.find(params[:id])

  end

end
