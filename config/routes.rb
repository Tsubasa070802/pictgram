Rails.application.routes.draw do
  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  resources :users

  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout',  to: 'sessions#destory'
  #1107 /logoutのURLは、SessionsControllerのdestroyアクションへ

  resources :users
  resources :topics
  #1107 "https://railsguides.jp/routing.html#crud、動詞、アクション" 詳細はここ
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'

end
