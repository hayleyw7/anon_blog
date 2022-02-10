Rails.application.routes.draw do

  # maps `GET /articles` requests to index action of `ArticlesController`

  # when you go to /articles, take me to method of the controller named `ArticlesController`

  get "/articles", to: "articles#index"

end
