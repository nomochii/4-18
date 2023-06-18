Rails.application.routes.draw do

  get "/homes/top" => "homes#top", as: "top"
  get "/homes/about" => "homes#about", as: "about"

  devise_for :users

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]

end