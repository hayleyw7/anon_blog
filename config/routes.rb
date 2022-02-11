Rails.application.routes.draw do

  # map root path of app to appropriate controller & action

  root "articles#index"

  # controller actions:
    # maps `GET /articles` requests to index action of `ArticlesController`
    # aka "when i go to /articles, take me to method of the controller"

  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"

end
