Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/query_path" => "params#query_action"
    get "/segment_path/:key" => "params#segment_action"
    post "/body_path" => "params#body_action"
  end

end
