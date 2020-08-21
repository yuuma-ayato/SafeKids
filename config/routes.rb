Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions' }

  root 'reservations#index'
  resources :reservations
  resources :parents
  resources :children
  resources :contact_informations
  resources :daycares

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
