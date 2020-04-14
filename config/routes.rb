Rails.application.routes.draw do
  resources :questions do
    collection do
      get 'admin'
    end
    resources :answers
  end
  devise_for :users

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
