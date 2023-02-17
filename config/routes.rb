Rails.application.routes.draw do
  
  
  #管理者用のルーティング
  devise_for :admin, skip: [:registrations, :passwards], controllers: {
    sessions: "admin/sessions"
  }
  
  
  namespace :admin do
    root 'orders#index'
    resources :items, only: [:new, :show, :edit, :update, :create, :index]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:index, :show]
    resources :genres, only: [:index, :edit, :create, :update]
    get 'genres/new'
    get 'genres/edit'
  end
  
  
  
  #顧客用のルーティング
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  scope module: :public do
    resources :items
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
