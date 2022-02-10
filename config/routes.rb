Rails.application.routes.draw do

  # map root path of app to appropriate controller & action

  root "articles#index"

  # maps `GET /articles` requests to index action of `ArticlesController`
    # "when i go to /articles, take me to method of the controller"

  get "/articles", to: "articles#index"

end
