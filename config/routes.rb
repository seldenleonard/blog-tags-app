Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
  
    get "/posts" => "posts#index"
    get "/posts/:id" => "posts#show"
    post "/posts" => "posts#create"
    patch "/posts/:id" => "posts#update"
    delete "/posts/:id" => "posts#delete"

    get "/tags" => "tags#index"
    get "/tags/:id" => "tags#show"

  end
end
