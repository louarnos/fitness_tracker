Rails.application.routes.draw do
  resources :meal_items, except: [:new, :edit]
  resources :meals, except: [:new, :edit]
  resources :foods, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  patch '/meals/:id' => 'meals#update'
  get '/foods/:sodium' => 'foods#index'
  get '/foods/search/:key' => 'foods#search'
  resources :users, only: [:index, :show]
end
