Rails.application.routes.draw do
  get 'daycares/index'
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions' }

  root 'reservations#index'
  resources :reservations do
    collection do
      post :confirm
    end
  end

  resources :parents do
    collection do
      post :confirm
    end
  end

  resources :children do
    collection do
      post :confirm
    end
  end

  resources :contact_informations do
    collection do
      post :confirm
    end
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
