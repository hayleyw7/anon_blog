class ArticlesController < ApplicationController

  # below are "actions"

  # the default action is `def index`
  # when an action doesn't explicitly render a view or trigger an http response, rails auto-renders a view that matches the name of the controller & action (app/views/articles/index.html.erb)

  def index

    # this is a specific action, which fetches all articles from database

    @articles = Article.all
    
  end

end
