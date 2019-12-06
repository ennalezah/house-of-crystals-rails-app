Rails.application.routes.draw do
  resources :carts
  resources :products
  
  devise_for :users, path: 'accounts', path_names: {
    # changes devise path name to custom name (e.g. '/users/sign_up' => '/signup')
    sign_up: 'signup', sign_in: 'login', sign_out: 'logout'
  }

  root 'welcome#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
