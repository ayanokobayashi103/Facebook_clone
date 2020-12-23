Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :fcbooks do
    collection do
      post :confirm
    end
  end
  root 'fcbooks#top'
end
