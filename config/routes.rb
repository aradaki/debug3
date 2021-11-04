Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users,only: [:show,:index,:edit,:update]
  get 'home/about' => 'homes#about'
end