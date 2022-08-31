Rails.application.routes.draw do
  root "articles#index"

  # creates `comments` as a nested resource within `articles`
  resources :articles do
    resources :comments
  end
end

