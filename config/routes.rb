Rails.application.routes.draw do
  root 'reservations#new'
  resources :reservations do
    collection do
      post :confirm
    end
  end
end
