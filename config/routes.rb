Rails.application.routes.draw do
  resources :cocoapuffs do 
    resources :fruty_pebbles, only: [:new, :create]
  end
  
  
  get 'fruty_pebbles/index'
  root 'cocoapuffs#index'
  
end
