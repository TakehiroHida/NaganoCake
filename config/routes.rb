Rails.application.routes.draw do
  
  
  #管理者用のルーティング
  devise_for :admin, skip: [:registrations, :passwards], controllers: {
    sessions: "admin/sessions"
  }
  
  namespace :admin do
    resources :items, except: [:destroy]
  end
  
  
  
  #顧客用のルーティング
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  resources :items
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
