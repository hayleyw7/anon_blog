Rails.application.routes.draw do

  # map root path of app to appropriate controller & action

  root "articles#index"

  # controller actions:
    # maps `GET /articles` requests to index action of `ArticlesController`
    # aka "when i go to /articles, take me to method of the controller"

  # `resources :articles` is a shorter way to do these 2 lines:
    # get "/articles", to: "articles#index"
    # get "/articles/:id", to: "articles#show"

  # resources method also sets up url/path helper methods
    # helper names = "prefix" (ex: `root`, `articles`, `new_article`) + suffix (url/path)
      # (ex: when given an article, article_path helper = "/articles/#{article.id}")

  resources :articles

end
