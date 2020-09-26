Rails.application.routes.draw do
  root 'static_pages#top'

  #ゲストユーザー機能
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    passwords: 'users/passwords',
                                    sessions: 'users/sessions' }

  devise_scope :user do
   post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  get 'search', to: 'reservations#search'
  resources :reservations do
    resources :comments
  end

  resources :contacts
  resources :children
  resources :daycares
  resources :users, only: [:show]

  namespace :admin do
    resources :users
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
