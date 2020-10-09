# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#top'

  # ゲストユーザー機能
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    passwords: 'users/passwords',
                                    sessions: 'users/sessions' }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
    post 'users/guest_clerk_sign_in', to: 'users/sessions#new_guest_clerk'
    post 'users/guest_childminder_sign_in', to: 'users/sessions#new_guest_childminder'
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

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
