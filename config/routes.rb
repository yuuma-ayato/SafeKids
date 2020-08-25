Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions' }

  root 'reservations#index'
  get 'search', to: 'reservations#search'
  resources :reservations do
    resources :comments
  end

  resources :contacts
  resources :children
  resources :daycares

  namespace :admin do
    resources :users
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
