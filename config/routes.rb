Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/phones" => "phones#index"
    post "/phones" => "phones#create"
    get "/phones/:id" => "phones#show"
    patch "/phones/:id" => "phones#update"
    delete "/phones/:id" => "phones#delete"
  end
end
