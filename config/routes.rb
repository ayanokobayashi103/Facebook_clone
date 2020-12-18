Rails.application.routes.draw do
  resources :fcbooks do
    collection do
      post :confirm
    end
  end
end
