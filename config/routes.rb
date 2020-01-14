Rails.application.routes.draw do
  get 'mypage/show'
  devise_for :users,
  controllers: { sessions: 'users/sessions', 
                 omniauth_callbacks: 'users/omniauth_callbacks', 
                 registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#new'

  resources :tops ,only:[:index]
  resources :products do
  end

  resources :categories do
  end

  resources :brands do
  end

end
