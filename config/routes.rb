Rails.application.routes.draw do
  devise_for :users #<= この中にuserモデル関連のルーティングが組まれている？からresources内に:destroyの記述をしなくてもログアウトが動作するのか？
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
