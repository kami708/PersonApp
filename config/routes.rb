Rails.application.routes.draw do
  get 'mypage/show'
  devise_for :users,
  controllers: { sessions: 'users/sessions', 
                 omniauth_callbacks: 'users/omniauth_callbacks', 
                 registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'

  resources :tops ,only:[:index]
  resources :products do
    resources :likes, only: [:create, :destroy]
    collection do
      get 'transaction'
      get 'get_category_children', defaults: { format: 'json' }
      get 'get_category_grandchildren', defaults: { format: 'json' }
      get 'get_size', defaults: { format: 'json' }
      get 'search_brand', defaults: { format: 'json' }
      get 'get_image', defaults: { format: 'json' }
      get 'delete_image', defaults: { format: 'json' }
    end
  end

  resources :categories do
  end

  

  resources :brands do
  end

end
