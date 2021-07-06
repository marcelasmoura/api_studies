Rails.application.routes.draw do
  resources :kinds

  resources :contacts do
    resource :kind, only: [:show], path: 'relationships/kind'
    resource :phones, only: [:show], path: 'relationships/phones'
    resource :phone, only: [:create, :update, :destroy], path:'relationships/phones'
    resource :address, only: [:show, :update, :create, :destroy], path: 'relationships/address'
  end
end
