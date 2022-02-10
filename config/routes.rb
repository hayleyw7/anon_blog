Rails.application.routes.draw do

  # maps `GET /articles` requests to index action of `ArticlesController`

  get "/articles", to: "articles#index"

end
