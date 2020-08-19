Rails.application.routes.draw do
  get 'daycares/index'
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions' }

  root 'reservations#index'
  resources :reservations
  resources :parents
  resources :children
  resources :contact_informations

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
